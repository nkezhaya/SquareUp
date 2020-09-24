defmodule SquareUp.V2.CatalogObjects do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec batch_delete(%SquareUp.Client{}, SquareUp.Schema.batch_delete_catalog_objects_request()) ::
          SquareUp.Client.response()
  def batch_delete(client, params \\ %{}) do
    norm_spec = spec(SquareUp.Schema.batch_delete_catalog_objects_request())

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      path: "/v2/catalog/batch-delete"
    })
  end

  @spec batch_retrieve(
          %SquareUp.Client{},
          SquareUp.Schema.batch_retrieve_catalog_objects_request()
        ) :: SquareUp.Client.response()
  def batch_retrieve(client, params \\ %{}) do
    norm_spec = spec(SquareUp.Schema.batch_retrieve_catalog_objects_request())

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      path: "/v2/catalog/batch-retrieve"
    })
  end

  @spec search(%SquareUp.Client{}, SquareUp.Schema.search_catalog_objects_request()) ::
          SquareUp.Client.response()
  def search(client, params \\ %{}) do
    norm_spec = spec(SquareUp.Schema.search_catalog_objects_request())

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      path: "/v2/catalog/search"
    })
  end
end
