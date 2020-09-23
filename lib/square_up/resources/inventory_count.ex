defmodule SquareUp.InventoryCount do
  import SquareUp.Client, only: [call: 2]

  def retrieve(client, params) do
    call(client, %{
      method: :get,
      params: params,
      path: "/v2/inventory/#{Map.get(params, "catalog_object_id")}"
    })
  end
end
