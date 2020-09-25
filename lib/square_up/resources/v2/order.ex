defmodule SquareUp.V2.Order do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec update(SquareUp.Client.t(), %{
          order_id: binary(),
          body: SquareUp.TypeSpecs.update_order_request()
        }) :: SquareUp.Client.response(SquareUp.TypeSpecs.update_order_response())
  def update(client, params \\ %{}) do
    norm_spec =
      schema(%{
        order_id: spec(is_binary()),
        body: Norm.Delegate.delegate(&SquareUp.NormSchema.update_order_request/0)
      })

    response_spec = {:delegate, &SquareUp.ResponseSchema.update_order_response/0}

    call(client, %{
      method: :put,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v2/orders/#{Map.get(params, "order_id")}"
    })
  end

  @spec create(SquareUp.Client.t(), SquareUp.TypeSpecs.create_order_request()) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.create_order_response())
  def create(client, params \\ %{}) do
    norm_spec = Norm.Delegate.delegate(&SquareUp.NormSchema.create_order_request/0)

    response_spec = {:delegate, &SquareUp.ResponseSchema.create_order_response/0}

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v2/orders"
    })
  end

  @spec calculate(SquareUp.Client.t(), SquareUp.TypeSpecs.calculate_order_request()) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.calculate_order_response())
  def calculate(client, params \\ %{}) do
    norm_spec = Norm.Delegate.delegate(&SquareUp.NormSchema.calculate_order_request/0)

    response_spec = {:delegate, &SquareUp.ResponseSchema.calculate_order_response/0}

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v2/orders/calculate"
    })
  end

  @spec pay(SquareUp.Client.t(), %{
          order_id: binary(),
          body: SquareUp.TypeSpecs.pay_order_request()
        }) :: SquareUp.Client.response(SquareUp.TypeSpecs.pay_order_response())
  def pay(client, params \\ %{}) do
    norm_spec =
      schema(%{
        order_id: spec(is_binary()),
        body: Norm.Delegate.delegate(&SquareUp.NormSchema.pay_order_request/0)
      })

    response_spec = {:delegate, &SquareUp.ResponseSchema.pay_order_response/0}

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v2/orders/#{Map.get(params, "order_id")}/pay"
    })
  end
end
