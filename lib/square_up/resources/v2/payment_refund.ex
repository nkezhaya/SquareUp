defmodule SquareUp.V2.PaymentRefund do
  import Norm
  import SquareUp.Client, only: [call: 2]
  @spec get(%SquareUp.Client{}, %{refund_id: binary()}) :: SquareUp.Client.response()
  def get(client, params \\ %{}) do
    norm_spec = schema(%{refund_id: spec(is_binary())})

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      path: "/v2/refunds/#{Map.get(params, "refund_id")}"
    })
  end
end
