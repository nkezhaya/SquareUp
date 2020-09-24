defmodule SquareUp.InventoryAdjustment do
  import Norm
  import SquareUp.Client, only: [call: 2]

  def retrieve(client, params) do
    norm_spec = schema(%{"adjustment_id" => spec(is_binary())})

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      path: "/v2/inventory/adjustment/#{Map.get(params, "adjustment_id")}"
    })
  end
end
