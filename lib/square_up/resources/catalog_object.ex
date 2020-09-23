defmodule SquareUp.CatalogObject do
  import SquareUp.Client, only: [call: 2]

  def delete(client, params) do
    call(client, %{
      method: :delete,
      params: params,
      path: "/v2/catalog/object/#{Map.get(params, "object_id")}"
    })
  end

  def retrieve(client, params) do
    call(client, %{
      method: :get,
      params: params,
      path: "/v2/catalog/object/#{Map.get(params, "object_id")}"
    })
  end

  def upsert(client, params) do
    call(client, %{
      method: :post,
      params: params,
      path: "/v2/catalog/object"
    })
  end
end
