defmodule SquareUp.V2.CatalogObject do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec delete(SquareUp.Client.t(), %{required(:object_id) => binary()}, %{}, %{}) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.delete_catalog_object_response())
  def delete(client, path_params \\ %{}, params \\ %{}, query_params \\ %{}) do
    path_params_spec = schema(%{object_id: spec(is_binary())})
    params_spec = schema(%{})
    query_params_spec = schema(%{})

    response_spec = {:delegate, &SquareUp.ResponseSchema.delete_catalog_object_response/0}

    call(client, %{
      method: :delete,
      path_params: path_params,
      params: params,
      query_params: query_params,
      path_params_spec: path_params_spec,
      params_spec: params_spec,
      query_params_spec: query_params_spec,
      response_spec: response_spec,
      path: "/v2/catalog/object/{object_id}"
    })
  end

  @spec retrieve(SquareUp.Client.t(), %{required(:object_id) => binary()}, %{}, %{
          optional(:include_related_objects) => boolean()
        }) :: SquareUp.Client.response(SquareUp.TypeSpecs.retrieve_catalog_object_response())
  def retrieve(client, path_params \\ %{}, params \\ %{}, query_params \\ %{}) do
    path_params_spec = schema(%{object_id: spec(is_binary())})
    params_spec = schema(%{})
    query_params_spec = schema(%{include_related_objects: spec(is_boolean())})

    response_spec = {:delegate, &SquareUp.ResponseSchema.retrieve_catalog_object_response/0}

    call(client, %{
      method: :get,
      path_params: path_params,
      params: params,
      query_params: query_params,
      path_params_spec: path_params_spec,
      params_spec: params_spec,
      query_params_spec: query_params_spec,
      response_spec: response_spec,
      path: "/v2/catalog/object/{object_id}"
    })
  end

  @spec upsert(SquareUp.Client.t(), %{}, SquareUp.TypeSpecs.upsert_catalog_object_request(), %{}) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.upsert_catalog_object_response())
  def upsert(client, path_params \\ %{}, params \\ %{}, query_params \\ %{}) do
    path_params_spec = schema(%{})
    # params_spec = Norm.Delegate.delegate(&SquareUp.NormSchema.upsert_catalog_object_request/0)
    # Disable Norm check of params because passing an array of binaries is crashing the check.
    params_spec = schema(%{})
    query_params_spec = schema(%{})

    response_spec = {:delegate, &SquareUp.ResponseSchema.upsert_catalog_object_response/0}

    call(client, %{
      method: :post,
      path_params: path_params,
      params: params,
      query_params: query_params,
      path_params_spec: path_params_spec,
      params_spec: params_spec,
      query_params_spec: query_params_spec,
      response_spec: response_spec,
      path: "/v2/catalog/object"
    })
  end
end
