defmodule SquareUp.Settlements do
  import SquareUp.Client, only: [call: 2]

  def list(client, params) do
    call(client, %{
      method: :get,
      params: params,
      path: "/v1/#{Map.get(params, "location_id")}/settlements"
    })
  end
end
