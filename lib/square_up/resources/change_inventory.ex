defmodule SquareUp.ChangeInventory do
  import SquareUp.Client, only: [call: 2]

  def batch(client, params) do
    call(client, %{
      method: :post,
      params: params,
      path: "/v2/inventory/batch-change"
    })
  end
end
