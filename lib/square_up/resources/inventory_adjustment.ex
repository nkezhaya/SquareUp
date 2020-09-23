defmodule SquareUp.InventoryAdjustment do
  import SquareUp.Client, only: [call: 2]

  def retrieve(client, params) do
    call(client, %{
      method: :get,
      params: params,
      path: "/v2/inventory/adjustment/#{Map.get(params, "adjustment_id")}"
    })
  end
end
