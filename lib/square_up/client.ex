defmodule SquareUp.Client do
  defstruct [:application_id, :access_token, :base_path]

  @square_version "2020-08-26"

  def call(client, call, opts \\ []) do
    :hackney.request(
      call.method,
      url(client, call),
      headers(client, call),
      body(client, call),
      opts
    )
    |> case do
      {:ok, 200, _resp_headers, ref} ->
        {:ok, get_body!(ref)}

      {:ok, http_code, _resp_headers, ref} ->
        {:error, {:resp_not_200, http_code, get_body_best_effort(ref)}}
    end
  end

  defp get_body!(ref) do
    {:ok, body_json} = :hackney.body(ref)
    Jason.decode!(body_json)
  end

  defp get_body_best_effort(ref) do
    {:ok, body_json} = :hackney.body(ref)

    case Jason.decode(body_json) do
      {:ok, body} -> body
      _ -> body_json
    end
  end

  defp url(client, call) do
    client.base_path <> call.path
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
