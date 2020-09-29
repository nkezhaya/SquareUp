defmodule SquareUp.V2.InventoryChanges do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec retrieve(SquareUp.Client.t(), %{required(:catalog_object_id) => binary()}, %{
          optional(:location_ids) => binary(),
          optional(:cursor) => binary()
        }) :: SquareUp.Client.response(SquareUp.TypeSpecs.retrieve_inventory_changes_response())
  def retrieve(client, path_params \\ %{}, params \\ %{}) do
    path_params_spec = schema(%{catalog_object_id: spec(is_binary())})
    params_spec = schema(%{location_ids: spec(is_binary()), cursor: spec(is_binary())})

    response_spec = {:delegate, &SquareUp.ResponseSchema.retrieve_inventory_changes_response/0}

    call(client, %{
      method: :get,
      path_params: path_params,
      params: params,
      path_params_spec: path_params_spec,
      params_spec: params_spec,
      response_spec: response_spec,
      path: "/v2/inventory/{catalog_object_id}/changes"
    })
  end

  @spec batch_retrieve(
          SquareUp.Client.t(),
          %{},
          SquareUp.TypeSpecs.batch_retrieve_inventory_changes_request()
        ) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.batch_retrieve_inventory_changes_response())
  def batch_retrieve(client, path_params \\ %{}, params \\ %{}) do
    path_params_spec = schema(%{})

    params_spec =
      Norm.Delegate.delegate(&SquareUp.NormSchema.batch_retrieve_inventory_changes_request/0)

    response_spec =
      {:delegate, &SquareUp.ResponseSchema.batch_retrieve_inventory_changes_response/0}

    call(client, %{
      method: :post,
      path_params: path_params,
      params: params,
      path_params_spec: path_params_spec,
      params_spec: params_spec,
      response_spec: response_spec,
      path: "/v2/inventory/batch-retrieve-changes"
    })
  end
end
