defmodule SquareUp.LoyaltyAccount do
  import SquareUp.Client, only: [call: 2]

  def retrieve(client, params) do
    call(client, %{
      method: :get,
      params: params,
      path: "/v2/loyalty/accounts/#{Map.get(params, "account_id")}"
    })
  end

  def create(client, params) do
    call(client, %{
      method: :post,
      params: params,
      path: "/v2/loyalty/accounts"
    })
  end
end
