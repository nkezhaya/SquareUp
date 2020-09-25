defmodule SquareUp.V2.PaymentRefund do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec get(SquareUp.Client.t(), %{refund_id: binary()}) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.get_payment_refund_response())
  def get(client, params \\ %{}) do
    norm_spec = schema(%{refund_id: spec(is_binary())})

    response_spec = {:delegate, &SquareUp.ResponseSchema.get_payment_refund_response/0}

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v2/refunds/#{Map.get(params, "refund_id")}"
    })
  end
end
