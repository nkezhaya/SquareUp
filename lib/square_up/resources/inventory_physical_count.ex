defmodule SquareUp.InventoryPhysicalCount do
  import SquareUp.Client, only: [call: 2]

  def retrieve(client, params) do
    call(client, %{
      method: :get,
      params: params,
      path: "/v2/inventory/physical-count/#{Map.get(params, "physical_count_id")}"
    })
  end
end
