defmodule SquareUp.V2.LoyaltyReward do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec redeem(SquareUp.Client.t(), %{
          reward_id: binary(),
          body: SquareUp.TypeSpecs.redeem_loyalty_reward_request()
        }) :: SquareUp.Client.response(SquareUp.TypeSpecs.redeem_loyalty_reward_response())
  def redeem(client, params \\ %{}) do
    norm_spec =
      schema(%{
        reward_id: spec(is_binary()),
        body: Norm.Delegate.delegate(&SquareUp.NormSchema.redeem_loyalty_reward_request/0)
      })

    response_spec = {:delegate, &SquareUp.ResponseSchema.redeem_loyalty_reward_response/0}

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v2/loyalty/rewards/#{Map.get(params, "reward_id")}/redeem"
    })
  end

  @spec delete(SquareUp.Client.t(), %{reward_id: binary()}) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.delete_loyalty_reward_response())
  def delete(client, params \\ %{}) do
    norm_spec = schema(%{reward_id: spec(is_binary())})

    response_spec = {:delegate, &SquareUp.ResponseSchema.delete_loyalty_reward_response/0}

    call(client, %{
      method: :delete,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v2/loyalty/rewards/#{Map.get(params, "reward_id")}"
    })
  end

  @spec retrieve(SquareUp.Client.t(), %{reward_id: binary()}) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.retrieve_loyalty_reward_response())
  def retrieve(client, params \\ %{}) do
    norm_spec = schema(%{reward_id: spec(is_binary())})

    response_spec = {:delegate, &SquareUp.ResponseSchema.retrieve_loyalty_reward_response/0}

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v2/loyalty/rewards/#{Map.get(params, "reward_id")}"
    })
  end

  @spec create(SquareUp.Client.t(), SquareUp.TypeSpecs.create_loyalty_reward_request()) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.create_loyalty_reward_response())
  def create(client, params \\ %{}) do
    norm_spec = Norm.Delegate.delegate(&SquareUp.NormSchema.create_loyalty_reward_request/0)

    response_spec = {:delegate, &SquareUp.ResponseSchema.create_loyalty_reward_response/0}

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v2/loyalty/rewards"
    })
  end
end
