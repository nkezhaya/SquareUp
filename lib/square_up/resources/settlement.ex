defmodule SquareUp.Settlement do
  import SquareUp.Client, only: [call: 2]

  def retrieve(client, params) do
    call(client, %{
      method: :get,
      params: params,
      path:
        "/v1/#{Map.get(params, "location_id")}/settlements/#{Map.get(params, "settlement_id")}"
    })
  end
end
