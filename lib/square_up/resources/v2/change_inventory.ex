defmodule SquareUp.V2.ChangeInventory do
  import Norm, only: [schema: 1]
  import SquareUp.Client, only: [call: 2]

  @spec batch(SquareUp.Client.t(), %{}, SquareUp.TypeSpecs.batch_change_inventory_request()) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.batch_change_inventory_response())
  def batch(client, path_params \\ %{}, params \\ %{}) do
    path_params_spec = schema(%{})
    params_spec = Norm.Delegate.delegate(&SquareUp.NormSchema.batch_change_inventory_request/0)

    response_spec = {:delegate, &SquareUp.ResponseSchema.batch_change_inventory_response/0}

    call(client, %{
      method: :post,
      path_params: path_params,
      params: params,
      path_params_spec: path_params_spec,
      params_spec: params_spec,
      response_spec: response_spec,
      path: "/v2/inventory/batch-change"
    })
  end
end
