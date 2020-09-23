defmodule SquareUp.Customers do
  import SquareUp.Client, only: [call: 2]

  def search(client, params) do
    call(client, %{
      method: :post,
      params: params,
      path: "/v2/customers/search"
    })
  end

  def list(client, params) do
    call(client, %{
      method: :get,
      params: params,
      path: "/v2/customers"
    })
  end
end
