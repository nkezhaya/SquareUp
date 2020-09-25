defmodule GenResources do
  use Mix.Task
  @shortdoc "generate modules from api.json"

  @api File.read!("api.json") |> Jason.decode!()

  @impl Mix.Task
  def run(_args) do
    rm_resources()

    write_schema_module()

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

    Enum.map(endpoints, fn {path, method, defn} ->
      mod_fun = Map.get(defn, "operationId") |> name_to_function()
      {mod_fun, {path, method, defn}}
    end)
    |> Enum.group_by(fn {{module, _fun}, {path, _, _}} ->
      [_, version | _] = String.split(path, "/")
      {module, version}
    end)
    |> Enum.map(&write_module/1)

    Mix.Tasks.Format.run(~w(lib/square_up/resources/**/*.ex))
  end

  defp write_module({{module, version}, endpoints}) do
    contents = """
    defmodule SquareUp.#{String.upcase(version)}.#{module} do
      import Norm
      import SquareUp.Client, only: [call: 2]
    #{Enum.map(endpoints, &write_function/1)}
    end
    """

    File.mkdir_p("lib/square_up/resources/#{String.downcase(version)}")

    File.write!(
      "lib/square_up/resources/#{String.downcase(version)}/#{Macro.underscore(module)}.ex",
      contents
    )
  end

  defp write_function({{_module, function}, {path, method, defn}}) do
    path =
      String.replace(path, ~r/{[^}]+}/, fn param ->
        param = String.replace(param, ["{", "}"], "")

        ~s[\#\{Map.get(params, "#{param}")\}]
      end)

    params = Map.get(defn, "parameters")

    """
      @spec #{function}(%SquareUp.Client{}, #{params_to_typespec(params)}) :: SquareUp.Client.response()
      def #{function}(client, params \\\\ %{}) do
        norm_spec = #{params_to_norm(params)}

        call(client, %{
          method: :#{method},
          params: params,
          spec: norm_spec,
          path: "#{path}"
        })
      end
    """
  end

  defp write_schema_module() do
    definitions = Map.get(@api, "definitions")

    contents = """
    defmodule SquareUp.Schema do
      import Norm
    #{Enum.map(definitions, &write_definition/1)}
    end
    """

    File.write!("lib/square_up/resources/schema.ex", contents)
  end

  defp write_definition({function, defn}) do
    """
    @type #{Macro.underscore(function)} :: #{params_to_typespec(defn)}
    def #{Macro.underscore(function)} do
      #{params_to_norm(defn)}
    end
    """

    # """
    # def #{Macro.underscore(function)}() do
    ## {params_to_norm(defn)}
    # end
    # """
  end

  defp params_to_norm([%{"name" => "body"} = body]) do
    Map.delete(body, "name") |> params_to_norm()
  end

  defp params_to_norm(list) when is_list(list) do
    "schema(%{#{Enum.map(list, &params_to_norm/1) |> Enum.join(",")}})"
  end

  defp params_to_norm(%{"properties" => props} = defn) do
    """
    schema(%{#{Enum.map(props, &params_to_norm/1) |> Enum.join(",")}})
    |> selection([#{
      Map.get(defn, "required", []) |> Enum.map(fn string -> ":#{string}" end) |> Enum.join(", ")
    }])
    """
  end

  defp params_to_norm(%{"name" => name} = param) do
    ~s[#{name}: #{params_to_norm(Map.delete(param, "name"))}]
  end

  defp params_to_norm(%{"schema" => %{"$ref" => schema}}) do
    "#/definitions/" <> function = schema
    ~s[Norm.Delegate.delegate(&SquareUp.Schema.#{Macro.underscore(function)}/0)]
  end

  defp params_to_norm(%{"$ref" => schema}) do
    "#/definitions/" <> function = schema
    ~s[Norm.Delegate.delegate(&SquareUp.Schema.#{Macro.underscore(function)}/0)]
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

  # params_to_typespec
  defp params_to_typespec([%{"name" => "body"} = body]) do
    Map.delete(body, "name") |> params_to_typespec()
  end

  defp params_to_typespec(list) when is_list(list) do
    "%{#{Enum.map(list, &params_to_typespec/1) |> Enum.join(",")}}"
  end

  defp params_to_typespec(%{"properties" => props} = defn) do
    required = Map.get(defn, "required", [])

    props =
      Enum.map(props, fn prop ->
        if prop in required do
          Map.put(prop, "required", true)
        else
          prop
        end
      end)

    """
    %{#{Enum.map(props, &params_to_typespec/1) |> Enum.join(",")}}
    """
  end

  defp params_to_typespec(%{"name" => name} = param) do
    ~s[#{name}: #{params_to_typespec(Map.delete(param, "name"))}]
  end

  defp params_to_typespec(%{"schema" => %{"$ref" => schema}}) do
    "#/definitions/" <> function = schema
    ~s[SquareUp.Schema.#{Macro.underscore(function)}()]
  end

  defp params_to_typespec(%{"$ref" => schema}) do
    "#/definitions/" <> function = schema
    ~s[SquareUp.Schema.#{Macro.underscore(function)}()]
  end

  defp params_to_typespec(%{"type" => "integer"}), do: "integer()"
  defp params_to_typespec(%{"type" => "boolean"}), do: "boolean()"
  defp params_to_typespec(%{"type" => "string"}), do: "binary()"
  defp params_to_typespec(%{"type" => "number"}), do: "number()"
  defp params_to_typespec(%{"type" => "object"}), do: "map()"

  defp params_to_typespec(%{"items" => item, "type" => "array"}) do
    "[#{params_to_typespec(item)}]"
  end

  defp params_to_typespec({name, param = %{}}) do
    params_to_typespec(Map.put(param, "name", name))
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
end

GenResources.run([])
