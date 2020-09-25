defmodule SquareUp.V2.InventoryPhysicalCount do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec retrieve(SquareUp.Client.t(), %{physical_count_id: binary()}) ::
          SquareUp.Client.response(
            SquareUp.TypeSpecs.retrieve_inventory_physical_count_response()
          )
  def retrieve(client, params \\ %{}) do
    norm_spec = schema(%{physical_count_id: spec(is_binary())})

    response_spec =
      {:delegate, &SquareUp.ResponseSchema.retrieve_inventory_physical_count_response/0}

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v2/inventory/physical-count/#{Map.get(params, "physical_count_id")}"
    })
  end
end
