defmodule SquareUp.InventoryCounts do
  import SquareUp.Client, only: [call: 2]

  def batch_retrieve(client, params) do
    call(client, %{
      method: :post,
      params: params,
      path: "/v2/inventory/batch-retrieve-counts"
    })
  end
end
