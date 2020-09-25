defmodule SquareUp.V2.UpsertCatalogObjects do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec batch(%SquareUp.Client{}, SquareUp.Schema.batch_upsert_catalog_objects_request()) ::
          SquareUp.Client.response()
  def batch(client, params \\ %{}) do
    norm_spec = Norm.Delegate.delegate(&SquareUp.Schema.batch_upsert_catalog_objects_request/0)

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      path: "/v2/catalog/batch-upsert"
    })
  end
end
