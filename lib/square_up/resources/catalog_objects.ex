defmodule SquareUp.CatalogObjects do
  import SquareUp.Client, only: [call: 2]

  def batch_delete(client, params) do
    call(client, %{
      method: :post,
      params: params,
      path: "/v2/catalog/batch-delete"
    })
  end

  def batch_retrieve(client, params) do
    call(client, %{
      method: :post,
      params: params,
      path: "/v2/catalog/batch-retrieve"
    })
  end

  def search(client, params) do
    call(client, %{
      method: :post,
      params: params,
      path: "/v2/catalog/search"
    })
  end
end
