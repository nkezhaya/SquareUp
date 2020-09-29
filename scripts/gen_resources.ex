defmodule GenResources do
  use Mix.Task
  @shortdoc "generate modules from api.json"

  @api File.read!("api.json") |> Jason.decode!()

  @impl Mix.Task
  def run(_args) do
    rm_resources()

    write_resources()

    write_norm_schema_module()

    write_typespecs_module()

    write_response_schemas_module()

    Mix.Tasks.Format.run(~w(lib/square_up/resources/**/*.ex))
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
    {path_params, params} =
      Map.get(defn, "parameters")
      |> Enum.split_with(fn
        %{"in" => "path"} -> true
        _ -> false
      end)

    success_response = Map.get(defn, "responses") |> Map.get("200") |> Map.get("schema")

    """
      @spec #{function}(SquareUp.Client.t(), #{params_to_typespec(path_params)}, #{
      params_to_typespec(params)
    }) :: SquareUp.Client.response(#{params_to_typespec(success_response)})
      def #{function}(client, path_params \\\\ %{}, params \\\\ %{}) do
        path_params_spec = #{params_to_norm(path_params)}
        params_spec = #{params_to_norm(params)}

        response_spec = #{response_to_spec(success_response)}

        call(client, %{
          method: :#{method},
          path_params: path_params,
          params: params,
          path_params_spec: path_params_spec,
          params_spec: params_spec,
          response_spec: response_spec,
          path: "#{path}"
        })
      end
    """
  end

  defp write_norm_schema_module() do
    definitions = Map.get(@api, "definitions")

    contents = """
    defmodule SquareUp.NormSchema do
      import Norm
    #{Enum.map(definitions, &write_norm_definition/1)}
    end
    """

    File.write!("lib/square_up/resources/norm_schema.ex", contents)
  end

  defp write_norm_definition({function, defn}) do
    """
    def #{Macro.underscore(function)} do
      #{params_to_norm(defn)}
    end
    """
  end

  defp write_typespecs_module() do
    definitions = Map.get(@api, "definitions")

    contents = """
    defmodule SquareUp.TypeSpecs do
    #{Enum.map(definitions, &write_typespec/1)}
    end
    """

    File.write!("lib/square_up/resources/typespecs.ex", contents)
  end

  defp write_typespec({function, defn}) do
    """
    @type #{Macro.underscore(function)} :: #{params_to_typespec(defn)}
    """
  end

  defp write_response_schemas_module() do
    definitions = Map.get(@api, "definitions")

    contents = """
    defmodule SquareUp.ResponseSchema do
    #{Enum.map(definitions, &write_response_schema/1)}
    end
    """

    File.write!("lib/square_up/resources/response_schema.ex", contents)
  end

  defp write_response_schema({function, defn}) do
    """
    def #{Macro.underscore(function)} do
      #{response_to_spec(defn)}
    end
    """
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
    ~s[Norm.Delegate.delegate(&SquareUp.NormSchema.#{Macro.underscore(function)}/0)]
  end

  defp params_to_norm(%{"$ref" => schema}) do
    "#/definitions/" <> function = schema
    ~s[Norm.Delegate.delegate(&SquareUp.NormSchema.#{Macro.underscore(function)}/0)]
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
      Enum.map(props, fn {key, val} = prop ->
        if key in required do
          {key, Map.put(val, "required", true)}
        else
          prop
        end
      end)

    """
    %{#{Enum.map(props, &params_to_typespec/1) |> Enum.join(",")}}
    """
  end

  defp params_to_typespec(%{"name" => name, "required" => true} = param) do
    ~s[required(:#{name}) => #{params_to_typespec(Map.delete(param, "name"))}]
  end

  defp params_to_typespec(%{"name" => name} = param) do
    ~s[optional(:#{name}) => #{params_to_typespec(Map.delete(param, "name"))}]
  end

  defp params_to_typespec(%{"schema" => %{"$ref" => schema}}) do
    "#/definitions/" <> function = schema
    ~s[SquareUp.TypeSpecs.#{Macro.underscore(function)}()]
  end

  defp params_to_typespec(%{"$ref" => schema}) do
    "#/definitions/" <> function = schema
    ~s[SquareUp.TypeSpecs.#{Macro.underscore(function)}()]
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

  # response_to_spec
  defp response_to_spec([%{"name" => "body"} = body]) do
    Map.delete(body, "name") |> response_to_spec()
  end

  defp response_to_spec(list) when is_list(list) do
    "%{#{Enum.map(list, &response_to_spec/1) |> Enum.join(",")}}"
  end

  defp response_to_spec(%{"properties" => props}) do
    ~s[%{#{Enum.map(props, &response_to_spec/1) |> Enum.join(",")}}]
  end

  defp response_to_spec(%{"name" => name} = param) do
    ~s[#{name}: #{response_to_spec(Map.delete(param, "name"))}]
  end

  defp response_to_spec(%{"schema" => %{"$ref" => schema}}) do
    "#/definitions/" <> function = schema
    ~s[{:delegate, &SquareUp.ResponseSchema.#{Macro.underscore(function)}/0}]
  end

  defp response_to_spec(%{"$ref" => schema}) do
    "#/definitions/" <> function = schema
    ~s[{:delegate, &SquareUp.ResponseSchema.#{Macro.underscore(function)}/0}]
  end

  defp response_to_spec(%{"type" => "integer"}), do: ":value"
  defp response_to_spec(%{"type" => "boolean"}), do: ":value"
  defp response_to_spec(%{"type" => "string"}), do: ":value"
  defp response_to_spec(%{"type" => "number"}), do: ":value"
  defp response_to_spec(%{"type" => "object"}), do: ":value"

  defp response_to_spec(%{"items" => item, "type" => "array"}) do
    "[#{response_to_spec(item)}]"
  end

  defp response_to_spec({name, param = %{}}) do
    response_to_spec(Map.put(param, "name", name))
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
