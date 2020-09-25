defmodule SquareUp.V2.InventoryCounts do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec batch_retrieve(
          %SquareUp.Client{},
          SquareUp.Schema.batch_retrieve_inventory_counts_request()
        ) :: SquareUp.Client.response()
  def batch_retrieve(client, params \\ %{}) do
    norm_spec = Norm.Delegate.delegate(&SquareUp.Schema.batch_retrieve_inventory_counts_request/0)

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      path: "/v2/inventory/batch-retrieve-counts"
    })
  end
end
