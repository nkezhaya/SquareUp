defmodule SquareUp.Merchant do
  import SquareUp.Client, only: [call: 2]

  def retrieve(client, params) do
    call(client, %{
      method: :get,
      params: params,
      path: "/v2/merchants/#{Map.get(params, "merchant_id")}"
    })
  end
end
