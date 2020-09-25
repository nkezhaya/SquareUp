defmodule SquareUp.V2.ChangeInventory do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec batch(SquareUp.Client.t(), SquareUp.TypeSpecs.batch_change_inventory_request()) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.batch_change_inventory_response())
  def batch(client, params \\ %{}) do
    norm_spec = Norm.Delegate.delegate(&SquareUp.NormSchema.batch_change_inventory_request/0)

    response_spec = {:delegate, &SquareUp.ResponseSchema.batch_change_inventory_response/0}

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v2/inventory/batch-change"
    })
  end
end
