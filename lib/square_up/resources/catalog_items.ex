defmodule SquareUp.CatalogItems do
  import SquareUp.Client, only: [call: 2]

  def search(client, params) do
    call(client, %{
      method: :post,
      params: params,
      path: "/v2/catalog/search-catalog-items"
    })
  end
end
