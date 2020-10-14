defmodule SquareUp.Client do
  defstruct application_id: nil, access_token: nil, base_path: "", hackney_opts: []

  @square_version "2020-08-26"

  # @type response :: {:ok, decoded_json :: any()} | {:error, any()}
  @type response(success) :: {:ok, success} | {:error, any()}
  @type t :: %__MODULE__{}

  def call(client, call, opts \\ []) do
    case check_request(call) do
      :ok -> do_request(client, call, Keyword.merge(client.hackney_opts, opts))
      {:error, _} = err -> err
    end
  end

  defp check_request(call) do
    import Norm

    with {:ok, _params} <- conform(call.params, call.params_spec),
         {:ok, _params} <- conform(call.path_params, call.path_params_spec) do
      :ok
    else
      {:error, _} = err -> err
    end
  end

  defp do_request(client, call, opts) do
    :hackney.request(
      call.method,
      url(client, call),
      headers(client, call),
      body(client, call),
      opts
    )
    |> case do
      {:ok, 200, _resp_headers, ref} ->
        case get_body!(ref, call.response_spec) do
          %{errors: errors} when length(errors) > 0 -> {:error, errors}
          response -> {:ok, response}
        end

      {:ok, http_code, _resp_headers, ref} ->
        {:error, {:resp_not_200, http_code, get_body_best_effort(ref)}}
    end
  end

  defp get_body!(ref, response_spec) do
    {:ok, body_json} = :hackney.body(ref)
    body = Jason.decode!(body_json)
    keys_to_atoms(body, response_spec)
  end

  defp get_body_best_effort(ref) do
    {:ok, body_json} = :hackney.body(ref)

    case Jason.decode(body_json) do
      {:ok, body} -> body
      _ -> body_json
    end
  end

  defp keys_to_atoms(nil, [_spec]), do: []
  defp keys_to_atoms(nil, _), do: nil

  defp keys_to_atoms(map = %{}, spec = %{}) do
    Map.new(spec, fn {key, val} ->
      value = keys_to_atoms(Map.get(map, to_string(key)), val)
      {key, value}
    end)
  end

  defp keys_to_atoms(list, [spec]) do
    Enum.map(list, fn item -> keys_to_atoms(item, spec) end)
  end

  defp keys_to_atoms(val, :value), do: val

  defp keys_to_atoms(val, {:delegate, fun}) do
    keys_to_atoms(val, fun.())
  end

  defp url(client, call) do
    path =
      Enum.reduce(call.path_params, call.path, fn {key, val}, path ->
        String.replace(path, "{#{key}}", val)
      end)

    client.base_path <> path
  end

  defp headers(client, _call) do
    %{
      "Content-Type" => "application/json",
      "Square-Version" => @square_version,
      "Authorization" => "Bearer #{client.access_token}"
    }
    |> Map.to_list()
  end

  defp body(_client, call) do
    Jason.encode!(call.params)
  end
end
