defmodule SquareUp.PaymentRefund do
  import SquareUp.Client, only: [call: 2]

  def get(client, params) do
    call(client, %{
      method: :get,
      params: params,
      path: "/v2/refunds/#{Map.get(params, "refund_id")}"
    })
  end
end
