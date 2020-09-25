defmodule SquareUp.V2.InventoryCount do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec retrieve(SquareUp.Client.t(), %{
          catalog_object_id: binary(),
          location_ids: binary(),
          cursor: binary()
        }) :: SquareUp.Client.response(SquareUp.TypeSpecs.retrieve_inventory_count_response())
  def retrieve(client, params \\ %{}) do
    norm_spec =
      schema(%{
        catalog_object_id: spec(is_binary()),
        location_ids: spec(is_binary()),
        cursor: spec(is_binary())
      })

    response_spec = {:delegate, &SquareUp.ResponseSchema.retrieve_inventory_count_response/0}

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v2/inventory/#{Map.get(params, "catalog_object_id")}"
    })
  end
end
