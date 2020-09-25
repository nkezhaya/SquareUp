defmodule SquareUp.V2.LoyaltyReward do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec redeem(%SquareUp.Client{}, %{
          reward_id: binary(),
          body: SquareUp.Schema.redeem_loyalty_reward_request()
        }) :: SquareUp.Client.response()
  def redeem(client, params \\ %{}) do
    norm_spec =
      schema(%{
        reward_id: spec(is_binary()),
        body: Norm.Delegate.delegate(&SquareUp.Schema.redeem_loyalty_reward_request/0)
      })

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      path: "/v2/loyalty/rewards/#{Map.get(params, "reward_id")}/redeem"
    })
  end

  @spec delete(%SquareUp.Client{}, %{reward_id: binary()}) :: SquareUp.Client.response()
  def delete(client, params \\ %{}) do
    norm_spec = schema(%{reward_id: spec(is_binary())})

    call(client, %{
      method: :delete,
      params: params,
      spec: norm_spec,
      path: "/v2/loyalty/rewards/#{Map.get(params, "reward_id")}"
    })
  end

  @spec retrieve(%SquareUp.Client{}, %{reward_id: binary()}) :: SquareUp.Client.response()
  def retrieve(client, params \\ %{}) do
    norm_spec = schema(%{reward_id: spec(is_binary())})

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      path: "/v2/loyalty/rewards/#{Map.get(params, "reward_id")}"
    })
  end

  @spec create(%SquareUp.Client{}, SquareUp.Schema.create_loyalty_reward_request()) ::
          SquareUp.Client.response()
  def create(client, params \\ %{}) do
    norm_spec = Norm.Delegate.delegate(&SquareUp.Schema.create_loyalty_reward_request/0)

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      path: "/v2/loyalty/rewards"
    })
  end
end
