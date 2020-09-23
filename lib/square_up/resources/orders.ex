defmodule SquareUp.Orders do
  import SquareUp.Client, only: [call: 2]

  def search(client, params) do
    call(client, %{
      method: :post,
      params: params,
      path: "/v2/orders/search"
    })
  end

  def batch_retrieve(client, params) do
    call(client, %{
      method: :post,
      params: params,
      path: "/v2/orders/batch-retrieve"
    })
  end
end
