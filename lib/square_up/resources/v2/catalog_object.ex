defmodule SquareUp.V2.CatalogObject do
  import Norm
  import SquareUp.Client, only: [call: 2]

  def delete(client, params \\ %{}) do
    norm_spec = schema(%{"object_id" => spec(is_binary())})

    call(client, %{
      method: :delete,
      params: params,
      spec: norm_spec,
      path: "/v2/catalog/object/#{Map.get(params, "object_id")}"
    })
  end

  def retrieve(client, params \\ %{}) do
    norm_spec =
      schema(%{"object_id" => spec(is_binary()), "include_related_objects" => spec(is_boolean())})

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      path: "/v2/catalog/object/#{Map.get(params, "object_id")}"
    })
  end

  def upsert(client, params \\ %{}) do
    norm_spec = spec(SquareUp.Schema.upsert_catalog_object_request())

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      path: "/v2/catalog/object"
    })
  end
end
