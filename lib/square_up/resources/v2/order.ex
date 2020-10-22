defmodule SquareUp.V2.Order do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec update(
          SquareUp.Client.t(),
          %{required(:order_id) => binary()},
          %{},
          SquareUp.TypeSpecs.update_order_request()
        ) :: SquareUp.Client.response(SquareUp.TypeSpecs.update_order_response())
  def update(client, path_params \\ %{}, query_params \\ %{}, params \\ %{}) do
    path_params_spec = schema(%{order_id: spec(is_binary())})
    query_params_spec = schema(%{})
    params_spec = Norm.Delegate.delegate(&SquareUp.NormSchema.update_order_request/0)

    response_spec = {:delegate, &SquareUp.ResponseSchema.update_order_response/0}

    call(client, %{
      method: :put,
      path_params: path_params,
      query_params: query_params,
      params: params,
      path_params_spec: path_params_spec,
      query_params_spec: query_params_spec,
      params_spec: params_spec,
      response_spec: response_spec,
      path: "/v2/orders/{order_id}"
    })
  end

  @spec create(SquareUp.Client.t(), %{}, %{}, SquareUp.TypeSpecs.create_order_request()) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.create_order_response())
  def create(client, path_params \\ %{}, query_params \\ %{}, params \\ %{}) do
    path_params_spec = schema(%{})
    query_params_spec = schema(%{})
    params_spec = Norm.Delegate.delegate(&SquareUp.NormSchema.create_order_request/0)

    response_spec = {:delegate, &SquareUp.ResponseSchema.create_order_response/0}

    call(client, %{
      method: :post,
      path_params: path_params,
      query_params: query_params,
      params: params,
      path_params_spec: path_params_spec,
      query_params_spec: query_params_spec,
      params_spec: params_spec,
      response_spec: response_spec,
      path: "/v2/orders"
    })
  end

  @spec calculate(SquareUp.Client.t(), %{}, %{}, SquareUp.TypeSpecs.calculate_order_request()) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.calculate_order_response())
  def calculate(client, path_params \\ %{}, query_params \\ %{}, params \\ %{}) do
    path_params_spec = schema(%{})
    query_params_spec = schema(%{})
    params_spec = Norm.Delegate.delegate(&SquareUp.NormSchema.calculate_order_request/0)

    response_spec = {:delegate, &SquareUp.ResponseSchema.calculate_order_response/0}

    call(client, %{
      method: :post,
      path_params: path_params,
      query_params: query_params,
      params: params,
      path_params_spec: path_params_spec,
      query_params_spec: query_params_spec,
      params_spec: params_spec,
      response_spec: response_spec,
      path: "/v2/orders/calculate"
    })
  end

  @spec pay(
          SquareUp.Client.t(),
          %{required(:order_id) => binary()},
          %{},
          SquareUp.TypeSpecs.pay_order_request()
        ) :: SquareUp.Client.response(SquareUp.TypeSpecs.pay_order_response())
  def pay(client, path_params \\ %{}, query_params \\ %{}, params \\ %{}) do
    path_params_spec = schema(%{order_id: spec(is_binary())})
    query_params_spec = schema(%{})
    params_spec = Norm.Delegate.delegate(&SquareUp.NormSchema.pay_order_request/0)

    response_spec = {:delegate, &SquareUp.ResponseSchema.pay_order_response/0}

    call(client, %{
      method: :post,
      path_params: path_params,
      query_params: query_params,
      params: params,
      path_params_spec: path_params_spec,
      query_params_spec: query_params_spec,
      params_spec: params_spec,
      response_spec: response_spec,
      path: "/v2/orders/{order_id}/pay"
    })
  end
end
