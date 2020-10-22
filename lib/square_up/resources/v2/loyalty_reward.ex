defmodule SquareUp.V2.LoyaltyReward do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec redeem(
          SquareUp.Client.t(),
          %{required(:reward_id) => binary()},
          SquareUp.TypeSpecs.redeem_loyalty_reward_request(),
          %{}
        ) :: SquareUp.Client.response(SquareUp.TypeSpecs.redeem_loyalty_reward_response())
  def redeem(client, path_params \\ %{}, params \\ %{}, query_params \\ %{}) do
    path_params_spec = schema(%{reward_id: spec(is_binary())})
    params_spec = Norm.Delegate.delegate(&SquareUp.NormSchema.redeem_loyalty_reward_request/0)
    query_params_spec = schema(%{})

    response_spec = {:delegate, &SquareUp.ResponseSchema.redeem_loyalty_reward_response/0}

    call(client, %{
      method: :post,
      path_params: path_params,
      params: params,
      query_params: query_params,
      path_params_spec: path_params_spec,
      params_spec: params_spec,
      query_params_spec: query_params_spec,
      response_spec: response_spec,
      path: "/v2/loyalty/rewards/{reward_id}/redeem"
    })
  end

  @spec delete(SquareUp.Client.t(), %{required(:reward_id) => binary()}, %{}, %{}) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.delete_loyalty_reward_response())
  def delete(client, path_params \\ %{}, params \\ %{}, query_params \\ %{}) do
    path_params_spec = schema(%{reward_id: spec(is_binary())})
    params_spec = schema(%{})
    query_params_spec = schema(%{})

    response_spec = {:delegate, &SquareUp.ResponseSchema.delete_loyalty_reward_response/0}

    call(client, %{
      method: :delete,
      path_params: path_params,
      params: params,
      query_params: query_params,
      path_params_spec: path_params_spec,
      params_spec: params_spec,
      query_params_spec: query_params_spec,
      response_spec: response_spec,
      path: "/v2/loyalty/rewards/{reward_id}"
    })
  end

  @spec retrieve(SquareUp.Client.t(), %{required(:reward_id) => binary()}, %{}, %{}) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.retrieve_loyalty_reward_response())
  def retrieve(client, path_params \\ %{}, params \\ %{}, query_params \\ %{}) do
    path_params_spec = schema(%{reward_id: spec(is_binary())})
    params_spec = schema(%{})
    query_params_spec = schema(%{})

    response_spec = {:delegate, &SquareUp.ResponseSchema.retrieve_loyalty_reward_response/0}

    call(client, %{
      method: :get,
      path_params: path_params,
      params: params,
      query_params: query_params,
      path_params_spec: path_params_spec,
      params_spec: params_spec,
      query_params_spec: query_params_spec,
      response_spec: response_spec,
      path: "/v2/loyalty/rewards/{reward_id}"
    })
  end

  @spec create(SquareUp.Client.t(), %{}, SquareUp.TypeSpecs.create_loyalty_reward_request(), %{}) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.create_loyalty_reward_response())
  def create(client, path_params \\ %{}, params \\ %{}, query_params \\ %{}) do
    path_params_spec = schema(%{})
    params_spec = Norm.Delegate.delegate(&SquareUp.NormSchema.create_loyalty_reward_request/0)
    query_params_spec = schema(%{})

    response_spec = {:delegate, &SquareUp.ResponseSchema.create_loyalty_reward_response/0}

    call(client, %{
      method: :post,
      path_params: path_params,
      params: params,
      query_params: query_params,
      path_params_spec: path_params_spec,
      params_spec: params_spec,
      query_params_spec: query_params_spec,
      response_spec: response_spec,
      path: "/v2/loyalty/rewards"
    })
  end
end
