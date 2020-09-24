defmodule SquareUp.UpsertCatalogObjects do
  import Norm
  import SquareUp.Client, only: [call: 2]

  def batch(client, params) do
    norm_spec = spec(SquareUp.Schema.batch_upsert_catalog_objects_request())

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      path: "/v2/catalog/batch-upsert"
    })
  end
end
