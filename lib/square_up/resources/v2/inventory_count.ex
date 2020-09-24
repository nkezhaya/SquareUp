defmodule SquareUp.V2.InventoryCount do
  import Norm
  import SquareUp.Client, only: [call: 2]

  def retrieve(client, params) do
    norm_spec =
      schema(%{
        "catalog_object_id" => spec(is_binary()),
        "location_ids" => spec(is_binary()),
        "cursor" => spec(is_binary())
      })

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      path: "/v2/inventory/#{Map.get(params, "catalog_object_id")}"
    })
  end
end
