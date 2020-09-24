defmodule SquareUp.Order do
  import Norm
  import SquareUp.Client, only: [call: 2]

  def update(client, params) do
    norm_spec =
      schema(%{
        "order_id" => spec(is_binary()),
        "body" => spec(SquareUp.Schema.update_order_request())
      })

    call(client, %{
      method: :put,
      params: params,
      spec: norm_spec,
      path: "/v2/orders/#{Map.get(params, "order_id")}"
    })
  end

  def create(client, params) do
    norm_spec = spec(SquareUp.Schema.create_order_request())

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      path: "/v2/orders"
    })
  end

  def calculate(client, params) do
    norm_spec = spec(SquareUp.Schema.calculate_order_request())

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      path: "/v2/orders/calculate"
    })
  end

  def pay(client, params) do
    norm_spec =
      schema(%{
        "order_id" => spec(is_binary()),
        "body" => spec(SquareUp.Schema.pay_order_request())
      })

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      path: "/v2/orders/#{Map.get(params, "order_id")}/pay"
    })
  end
end
