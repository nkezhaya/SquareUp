defmodule SquareUp.V1.Order do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec retrieve(
          SquareUp.Client.t(),
          %{required(:location_id) => binary(), required(:order_id) => binary()},
          %{}
        ) :: SquareUp.Client.response(SquareUp.TypeSpecs.v1_order())
  def retrieve(client, path_params \\ %{}, params \\ %{}) do
    path_params_spec = schema(%{location_id: spec(is_binary()), order_id: spec(is_binary())})
    params_spec = schema(%{})

    response_spec = {:delegate, &SquareUp.ResponseSchema.v1_order/0}

    call(client, %{
      method: :get,
      path_params: path_params,
      params: params,
      path_params_spec: path_params_spec,
      params_spec: params_spec,
      response_spec: response_spec,
      path: "/v1/{location_id}/orders/{order_id}"
    })
  end

  @spec update(
          SquareUp.Client.t(),
          %{required(:location_id) => binary(), required(:order_id) => binary()},
          SquareUp.TypeSpecs.v1_update_order_request()
        ) :: SquareUp.Client.response(SquareUp.TypeSpecs.v1_order())
  def update(client, path_params \\ %{}, params \\ %{}) do
    path_params_spec = schema(%{location_id: spec(is_binary()), order_id: spec(is_binary())})
    params_spec = Norm.Delegate.delegate(&SquareUp.NormSchema.v1_update_order_request/0)

    response_spec = {:delegate, &SquareUp.ResponseSchema.v1_order/0}

    call(client, %{
      method: :put,
      path_params: path_params,
      params: params,
      path_params_spec: path_params_spec,
      params_spec: params_spec,
      response_spec: response_spec,
      path: "/v1/{location_id}/orders/{order_id}"
    })
  end
end
