defmodule SquareUp.V2.InventoryPhysicalCount do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec retrieve(SquareUp.Client.t(), %{physical_count_id: binary()}, %{}) ::
          SquareUp.Client.response(
            SquareUp.TypeSpecs.retrieve_inventory_physical_count_response()
          )
  def retrieve(client, path_params \\ %{}, params \\ %{}) do
    path_params_spec = schema(%{physical_count_id: spec(is_binary())})
    params_spec = schema(%{})

    response_spec =
      {:delegate, &SquareUp.ResponseSchema.retrieve_inventory_physical_count_response/0}

    call(client, %{
      method: :get,
      path_params: path_params,
      params: params,
      path_params_spec: path_params_spec,
      params_spec: params_spec,
      response_spec: response_spec,
      path: "/v2/inventory/physical-count/{physical_count_id}"
    })
  end
end
