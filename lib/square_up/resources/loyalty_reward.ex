defmodule SquareUp.LoyaltyReward do
  import SquareUp.Client, only: [call: 2]

  def redeem(client, params) do
    call(client, %{
      method: :post,
      params: params,
      path: "/v2/loyalty/rewards/#{Map.get(params, "reward_id")}/redeem"
    })
  end

  def delete(client, params) do
    call(client, %{
      method: :delete,
      params: params,
      path: "/v2/loyalty/rewards/#{Map.get(params, "reward_id")}"
    })
  end

  def retrieve(client, params) do
    call(client, %{
      method: :get,
      params: params,
      path: "/v2/loyalty/rewards/#{Map.get(params, "reward_id")}"
    })
  end

  def create(client, params) do
    call(client, %{
      method: :post,
      params: params,
      path: "/v2/loyalty/rewards"
    })
  end
end
