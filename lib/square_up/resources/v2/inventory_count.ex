defmodule SquareUp.V2.InventoryCount do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec retrieve(SquareUp.Client.t(), %{required(:catalog_object_id) => binary()}, %{}, %{
          optional(:location_ids) => binary(),
          optional(:cursor) => binary()
        }) :: SquareUp.Client.response(SquareUp.TypeSpecs.retrieve_inventory_count_response())
  def retrieve(client, path_params \\ %{}, params \\ %{}, query_params \\ %{}) do
    path_params_spec = schema(%{catalog_object_id: spec(is_binary())})
    params_spec = schema(%{})
    query_params_spec = schema(%{location_ids: spec(is_binary()), cursor: spec(is_binary())})

    response_spec = {:delegate, &SquareUp.ResponseSchema.retrieve_inventory_count_response/0}

    call(client, %{
      method: :get,
      path_params: path_params,
      params: params,
      query_params: query_params,
      path_params_spec: path_params_spec,
      params_spec: params_spec,
      query_params_spec: query_params_spec,
      response_spec: response_spec,
      path: "/v2/inventory/{catalog_object_id}"
    })
  end
end
