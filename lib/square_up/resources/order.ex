defmodule SquareUp.Order do
  import SquareUp.Client, only: [call: 2]

  def update(client, params) do
    call(client, %{
      method: :put,
      params: params,
      path: "/v2/orders/#{Map.get(params, "order_id")}"
    })
  end

  def create(client, params) do
    call(client, %{
      method: :post,
      params: params,
      path: "/v2/orders"
    })
  end

  def calculate(client, params) do
    call(client, %{
      method: :post,
      params: params,
      path: "/v2/orders/calculate"
    })
  end

  def pay(client, params) do
    call(client, %{
      method: :post,
      params: params,
      path: "/v2/orders/#{Map.get(params, "order_id")}/pay"
    })
  end
end
