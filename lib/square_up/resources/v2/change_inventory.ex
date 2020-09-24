defmodule SquareUp.V2.ChangeInventory do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec batch(%SquareUp.Client{}, SquareUp.Schema.batch_change_inventory_request()) ::
          SquareUp.Client.response()
  def batch(client, params \\ %{}) do
    norm_spec = spec(SquareUp.Schema.batch_change_inventory_request())

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      path: "/v2/inventory/batch-change"
    })
  end
end
