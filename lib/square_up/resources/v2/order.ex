defmodule SquareUp.V2.Order do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec update(%SquareUp.Client{}, %{
          order_id: binary(),
          body: SquareUp.Schema.update_order_request()
        }) :: SquareUp.Client.response()
  def update(client, params \\ %{}) do
    norm_spec =
      schema(%{
        order_id: spec(is_binary()),
        body: Norm.Delegate.delegate(&SquareUp.Schema.update_order_request/0)
      })

    call(client, %{
      method: :put,
      params: params,
      spec: norm_spec,
      path: "/v2/orders/#{Map.get(params, "order_id")}"
    })
  end

  @spec create(%SquareUp.Client{}, SquareUp.Schema.create_order_request()) ::
          SquareUp.Client.response()
  def create(client, params \\ %{}) do
    norm_spec = Norm.Delegate.delegate(&SquareUp.Schema.create_order_request/0)

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      path: "/v2/orders"
    })
  end

  @spec calculate(%SquareUp.Client{}, SquareUp.Schema.calculate_order_request()) ::
          SquareUp.Client.response()
  def calculate(client, params \\ %{}) do
    norm_spec = Norm.Delegate.delegate(&SquareUp.Schema.calculate_order_request/0)

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      path: "/v2/orders/calculate"
    })
  end

  @spec pay(%SquareUp.Client{}, %{order_id: binary(), body: SquareUp.Schema.pay_order_request()}) ::
          SquareUp.Client.response()
  def pay(client, params \\ %{}) do
    norm_spec =
      schema(%{
        order_id: spec(is_binary()),
        body: Norm.Delegate.delegate(&SquareUp.Schema.pay_order_request/0)
      })

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      path: "/v2/orders/#{Map.get(params, "order_id")}/pay"
    })
  end
end
