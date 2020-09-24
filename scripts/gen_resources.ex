defmodule GenResources do
  use Mix.Task
  @shortdoc "generate modules from api.json"

  @api File.read!("api.json") |> Jason.decode!()

  @impl Mix.Task
  def run(_args) do
    rm_resources()

    write_resources()
  end

  defp rm_resources() do
    Path.wildcard("lib/square_up/resources/*.ex")
    |> Enum.each(&File.rm/1)
  end

  defp write_resources() do
    endpoints =
      Map.get(@api, "paths")
      |> Enum.flat_map(fn {path, methods} ->
        Enum.map(methods, fn {method, defn} ->
          {path, method, defn}
        end)
      end)
      |> filter_deprecated()
      |> filter_v1()

    # TODO offer support for v1 and v2 and vX endpoints

    Enum.map(endpoints, fn {path, method, defn} ->
      function = Map.get(defn, "operationId") |> name_to_function()
      {function, {path, method, defn}}
    end)
    |> Enum.group_by(fn {{module, _fun}, _defn} -> module end)
    |> Enum.map(&write_module/1)

    Mix.Tasks.Format.run(~w(lib/square_up/resources/*.ex))
  end

  defp write_module({module, endpoints}) do
    contents = """
    defmodule SquareUp.#{module} do
      import SquareUp.Client, only: [call: 2]
    #{Enum.map(endpoints, &write_function/1)}
    end
    """

    File.write!("lib/square_up/resources/#{Macro.underscore(module)}.ex", contents)
  end

  defp write_function({{_module, function}, {path, method, defn}}) do
    # NOTE for later:
    # norm_spec = #{params_to_norm(Map.get(defn, "parameters"))}
    # IO.inspect(defn)

    path =
      String.replace(path, ~r/{[^}]+}/, fn param ->
        param = String.replace(param, ["{", "}"], "")

        ~s[\#\{Map.get(params, "#{param}")\}]
      end)

    """
      def #{function}(client, params) do
        call(client, %{
          method: :#{method},
          params: params,
          path: "#{path}"
        })
      end
    """
  end

  defp params_to_norm(list) when is_list(list) do
    "schema(%{#{Enum.map(list, &params_to_norm/1) |> Enum.join(",")}})"
  end

  defp params_to_norm(%{"properties" => props}) do
    "schema(%{#{Enum.map(props, &params_to_norm/1) |> Enum.join(",")}})"
  end

  defp params_to_norm(%{"schema" => %{"$ref" => schema}}) do
    get_definition(schema) |> params_to_norm()
  end

  defp params_to_norm(%{"$ref" => schema}) do
    get_definition(schema) |> params_to_norm()
  end

  defp params_to_norm(%{"name" => name} = param) do
    """
    "#{name}" => #{params_to_norm(Map.delete(param, "name"))}
    """
  end

  defp params_to_norm(%{"type" => "integer"}) do
    "spec(is_integer())"
  end

  defp params_to_norm(%{"type" => "boolean"}) do
    "spec(is_boolean())"
  end

  defp params_to_norm(%{"type" => "string"}) do
    "spec(is_binary())"
  end

  defp params_to_norm(%{"type" => "number"}) do
    "spec(is_number())"
  end

  defp params_to_norm(%{"type" => "object"}) do
    "schema(%{})"
  end

  defp params_to_norm(%{"items" => item, "type" => "array"}) do
    "spec(coll_of(#{params_to_norm(item)}))"
  end

  defp params_to_norm({name, param = %{}}) do
    params_to_norm(Map.put(param, "name", name))
  end

  defp get_definition("#/definitions/" <> definition) do
    IO.inspect(definition, label: "getting definition for")
    Map.get(@api, "definitions") |> Map.get(definition)
  end

  defp name_to_function("BulkUpdate" <> module), do: {module, "bulk_update"}
  defp name_to_function("BatchDelete" <> module), do: {module, "batch_delete"}
  defp name_to_function("AddGroupTo" <> module), do: {module, "add_group"}
  defp name_to_function("RemoveGroupFrom" <> module), do: {module, "remove_group"}
  defp name_to_function("BatchRetrieve" <> module), do: {module, "batch_retrieve"}

  defp name_to_function("CancelPaymentByIdempotencyKey"),
    do: {"Payment", "cancel_by_idempotency_key"}

  defp name_to_function(name) do
    regex = ~r/^([A-Z][a-z]+)(.*)/
    [_full, function, module] = Regex.run(regex, name)
    {module, Macro.underscore(function)}
  end

  defp filter_deprecated(endpoints) do
    Enum.filter(endpoints, fn
      {_, _, %{"x-is-deprecated" => true}} -> false
      _ -> true
    end)
  end

  defp filter_v1(endpoints) do
    Enum.filter(endpoints, fn
      {"/v1/" <> _, _, _} -> false
      _ -> true
    end)
  end
end

GenResources.run([])
