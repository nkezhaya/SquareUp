defmodule SquareUp.V2.UpsertCatalogObjects do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec batch(SquareUp.Client.t(), SquareUp.TypeSpecs.batch_upsert_catalog_objects_request()) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.batch_upsert_catalog_objects_response())
  def batch(client, params \\ %{}) do
    norm_spec =
      Norm.Delegate.delegate(&SquareUp.NormSchema.batch_upsert_catalog_objects_request/0)

    response_spec = {:delegate, &SquareUp.ResponseSchema.batch_upsert_catalog_objects_response/0}

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v2/catalog/batch-upsert"
    })
  end
end
