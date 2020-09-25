defmodule SquareUp.V2.CatalogObjects do
  import Norm, only: [schema: 1]
  import SquareUp.Client, only: [call: 2]

  @spec batch_delete(
          SquareUp.Client.t(),
          %{},
          SquareUp.TypeSpecs.batch_delete_catalog_objects_request()
        ) :: SquareUp.Client.response(SquareUp.TypeSpecs.batch_delete_catalog_objects_response())
  def batch_delete(client, path_params \\ %{}, params \\ %{}) do
    path_params_spec = schema(%{})

    params_spec =
      Norm.Delegate.delegate(&SquareUp.NormSchema.batch_delete_catalog_objects_request/0)

    response_spec = {:delegate, &SquareUp.ResponseSchema.batch_delete_catalog_objects_response/0}

    call(client, %{
      method: :post,
      path_params: path_params,
      params: params,
      path_params_spec: path_params_spec,
      params_spec: params_spec,
      response_spec: response_spec,
      path: "/v2/catalog/batch-delete"
    })
  end

  @spec batch_retrieve(
          SquareUp.Client.t(),
          %{},
          SquareUp.TypeSpecs.batch_retrieve_catalog_objects_request()
        ) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.batch_retrieve_catalog_objects_response())
  def batch_retrieve(client, path_params \\ %{}, params \\ %{}) do
    path_params_spec = schema(%{})

    params_spec =
      Norm.Delegate.delegate(&SquareUp.NormSchema.batch_retrieve_catalog_objects_request/0)

    response_spec =
      {:delegate, &SquareUp.ResponseSchema.batch_retrieve_catalog_objects_response/0}

    call(client, %{
      method: :post,
      path_params: path_params,
      params: params,
      path_params_spec: path_params_spec,
      params_spec: params_spec,
      response_spec: response_spec,
      path: "/v2/catalog/batch-retrieve"
    })
  end

  @spec search(SquareUp.Client.t(), %{}, SquareUp.TypeSpecs.search_catalog_objects_request()) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.search_catalog_objects_response())
  def search(client, path_params \\ %{}, params \\ %{}) do
    path_params_spec = schema(%{})
    params_spec = Norm.Delegate.delegate(&SquareUp.NormSchema.search_catalog_objects_request/0)

    response_spec = {:delegate, &SquareUp.ResponseSchema.search_catalog_objects_response/0}

    call(client, %{
      method: :post,
      path_params: path_params,
      params: params,
      path_params_spec: path_params_spec,
      params_spec: params_spec,
      response_spec: response_spec,
      path: "/v2/catalog/search"
    })
  end
end
