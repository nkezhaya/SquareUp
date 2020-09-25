defmodule SquareUp.V2.PaymentRefund do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec get(SquareUp.Client.t(), %{refund_id: binary()}, %{}) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.get_payment_refund_response())
  def get(client, path_params \\ %{}, params \\ %{}) do
    path_params_spec = schema(%{refund_id: spec(is_binary())})
    params_spec = schema(%{})

    response_spec = {:delegate, &SquareUp.ResponseSchema.get_payment_refund_response/0}

    call(client, %{
      method: :get,
      path_params: path_params,
      params: params,
      path_params_spec: path_params_spec,
      params_spec: params_spec,
      response_spec: response_spec,
      path: "/v2/refunds/{refund_id}"
    })
  end
end
