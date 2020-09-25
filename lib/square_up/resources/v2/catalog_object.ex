defmodule SquareUp.V2.CatalogObject do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec delete(SquareUp.Client.t(), %{object_id: binary()}) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.delete_catalog_object_response())
  def delete(client, params \\ %{}) do
    norm_spec = schema(%{object_id: spec(is_binary())})

    response_spec = {:delegate, &SquareUp.ResponseSchema.delete_catalog_object_response/0}

    call(client, %{
      method: :delete,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v2/catalog/object/#{Map.get(params, "object_id")}"
    })
  end

  @spec retrieve(SquareUp.Client.t(), %{object_id: binary(), include_related_objects: boolean()}) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.retrieve_catalog_object_response())
  def retrieve(client, params \\ %{}) do
    norm_spec =
      schema(%{object_id: spec(is_binary()), include_related_objects: spec(is_boolean())})

    response_spec = {:delegate, &SquareUp.ResponseSchema.retrieve_catalog_object_response/0}

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v2/catalog/object/#{Map.get(params, "object_id")}"
    })
  end

  @spec upsert(SquareUp.Client.t(), SquareUp.TypeSpecs.upsert_catalog_object_request()) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.upsert_catalog_object_response())
  def upsert(client, params \\ %{}) do
    norm_spec = Norm.Delegate.delegate(&SquareUp.NormSchema.upsert_catalog_object_request/0)

    response_spec = {:delegate, &SquareUp.ResponseSchema.upsert_catalog_object_response/0}

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v2/catalog/object"
    })
  end
end
