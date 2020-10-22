defmodule SquareUp.V2.InventoryAdjustment do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec retrieve(SquareUp.Client.t(), %{required(:adjustment_id) => binary()}, %{}, %{}) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.retrieve_inventory_adjustment_response())
  def retrieve(client, path_params \\ %{}, query_params \\ %{}, params \\ %{}) do
    path_params_spec = schema(%{adjustment_id: spec(is_binary())})
    query_params_spec = schema(%{})
    params_spec = schema(%{})

    response_spec = {:delegate, &SquareUp.ResponseSchema.retrieve_inventory_adjustment_response/0}

    call(client, %{
      method: :get,
      path_params: path_params,
      query_params: query_params,
      params: params,
      path_params_spec: path_params_spec,
      query_params_spec: query_params_spec,
      params_spec: params_spec,
      response_spec: response_spec,
      path: "/v2/inventory/adjustment/{adjustment_id}"
    })
  end
end
