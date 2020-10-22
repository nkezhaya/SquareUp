defmodule SquareUp.V1.Payment do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec retrieve(
          SquareUp.Client.t(),
          %{required(:location_id) => binary(), required(:payment_id) => binary()},
          %{},
          %{}
        ) :: SquareUp.Client.response(SquareUp.TypeSpecs.v1_payment())
  def retrieve(client, path_params \\ %{}, params \\ %{}, query_params \\ %{}) do
    path_params_spec = schema(%{location_id: spec(is_binary()), payment_id: spec(is_binary())})
    params_spec = schema(%{})
    query_params_spec = schema(%{})

    response_spec = {:delegate, &SquareUp.ResponseSchema.v1_payment/0}

    call(client, %{
      method: :get,
      path_params: path_params,
      params: params,
      query_params: query_params,
      path_params_spec: path_params_spec,
      params_spec: params_spec,
      query_params_spec: query_params_spec,
      response_spec: response_spec,
      path: "/v1/{location_id}/payments/{payment_id}"
    })
  end
end
