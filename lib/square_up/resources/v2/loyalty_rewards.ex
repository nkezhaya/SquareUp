defmodule SquareUp.V2.LoyaltyRewards do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec search(SquareUp.Client.t(), %{}, SquareUp.TypeSpecs.search_loyalty_rewards_request(), %{}) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.search_loyalty_rewards_response())
  def search(client, path_params \\ %{}, params \\ %{}, query_params \\ %{}) do
    path_params_spec = schema(%{})
    params_spec = Norm.Delegate.delegate(&SquareUp.NormSchema.search_loyalty_rewards_request/0)
    query_params_spec = schema(%{})

    response_spec = {:delegate, &SquareUp.ResponseSchema.search_loyalty_rewards_response/0}

    call(client, %{
      method: :post,
      path_params: path_params,
      params: params,
      query_params: query_params,
      path_params_spec: path_params_spec,
      params_spec: params_spec,
      query_params_spec: query_params_spec,
      response_spec: response_spec,
      path: "/v2/loyalty/rewards/search"
    })
  end
end
