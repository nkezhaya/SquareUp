defmodule SquareUp.V2.ChangeInventory do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec batch(SquareUp.Client.t(), %{}, SquareUp.TypeSpecs.batch_change_inventory_request(), %{}) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.batch_change_inventory_response())
  def batch(client, path_params \\ %{}, params \\ %{}, query_params \\ %{}) do
    path_params_spec = schema(%{})
    # params_spec = Norm.Delegate.delegate(&SquareUp.NormSchema.upsert_catalog_object_request/0)
    # Disable Norm check of params because passing an array of binaries is crashing the check.
    params_spec = schema(%{})
    query_params_spec = schema(%{})

    response_spec = {:delegate, &SquareUp.ResponseSchema.batch_change_inventory_response/0}

    call(client, %{
      method: :post,
      path_params: path_params,
      params: params,
      query_params: query_params,
      path_params_spec: path_params_spec,
      params_spec: params_spec,
      query_params_spec: query_params_spec,
      response_spec: response_spec,
      path: "/v2/inventory/batch-change"
    })
  end
end
