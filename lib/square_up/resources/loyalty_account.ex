defmodule SquareUp.LoyaltyAccount do
  import Norm
  import SquareUp.Client, only: [call: 2]

  def retrieve(client, params) do
    norm_spec = schema(%{"account_id" => spec(is_binary())})

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      path: "/v2/loyalty/accounts/#{Map.get(params, "account_id")}"
    })
  end

  def create(client, params) do
    norm_spec = spec(SquareUp.Schema.create_loyalty_account_request())

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      path: "/v2/loyalty/accounts"
    })
  end
end
