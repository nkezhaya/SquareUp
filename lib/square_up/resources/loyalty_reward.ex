defmodule SquareUp.LoyaltyReward do
  import Norm
  import SquareUp.Client, only: [call: 2]

  def redeem(client, params) do
    norm_spec =
      schema(%{
        "reward_id" => spec(is_binary()),
        "body" => spec(SquareUp.Schema.redeem_loyalty_reward_request())
      })

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      path: "/v2/loyalty/rewards/#{Map.get(params, "reward_id")}/redeem"
    })
  end

  def delete(client, params) do
    norm_spec = schema(%{"reward_id" => spec(is_binary())})

    call(client, %{
      method: :delete,
      params: params,
      spec: norm_spec,
      path: "/v2/loyalty/rewards/#{Map.get(params, "reward_id")}"
    })
  end

  def retrieve(client, params) do
    norm_spec = schema(%{"reward_id" => spec(is_binary())})

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      path: "/v2/loyalty/rewards/#{Map.get(params, "reward_id")}"
    })
  end

  def create(client, params) do
    norm_spec = spec(SquareUp.Schema.create_loyalty_reward_request())

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      path: "/v2/loyalty/rewards"
    })
  end
end
