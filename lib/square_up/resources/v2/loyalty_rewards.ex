defmodule SquareUp.V2.LoyaltyRewards do
  import Norm
  import SquareUp.Client, only: [call: 2]

  def search(client, params) do
    norm_spec = spec(SquareUp.Schema.search_loyalty_rewards_request())

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      path: "/v2/loyalty/rewards/search"
    })
  end
end
