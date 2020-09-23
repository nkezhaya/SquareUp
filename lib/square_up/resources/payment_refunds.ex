defmodule SquareUp.PaymentRefunds do
  import SquareUp.Client, only: [call: 2]

  def list(client, params) do
    call(client, %{
      method: :get,
      params: params,
      path: "/v2/refunds"
    })
  end
end
