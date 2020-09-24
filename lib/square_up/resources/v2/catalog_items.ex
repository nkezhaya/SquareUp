defmodule SquareUp.V2.CatalogItems do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec search(%SquareUp.Client{}, SquareUp.Schema.search_catalog_items_request()) ::
          SquareUp.Client.response()
  def search(client, params \\ %{}) do
    norm_spec = spec(SquareUp.Schema.search_catalog_items_request())

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      path: "/v2/catalog/search-catalog-items"
    })
  end
end
