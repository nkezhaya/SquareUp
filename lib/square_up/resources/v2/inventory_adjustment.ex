defmodule SquareUp.V2.InventoryAdjustment do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec retrieve(SquareUp.Client.t(), %{adjustment_id: binary()}) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.retrieve_inventory_adjustment_response())
  def retrieve(client, params \\ %{}) do
    norm_spec = schema(%{adjustment_id: spec(is_binary())})

    response_spec = {:delegate, &SquareUp.ResponseSchema.retrieve_inventory_adjustment_response/0}

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v2/inventory/adjustment/#{Map.get(params, "adjustment_id")}"
    })
  end
end
