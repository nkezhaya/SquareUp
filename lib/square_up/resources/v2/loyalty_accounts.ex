defmodule SquareUp.V2.LoyaltyAccounts do
  import SquareUp.Client, only: [call: 2]

  @spec search(SquareUp.Client.t(), %{}, SquareUp.TypeSpecs.search_loyalty_accounts_request()) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.search_loyalty_accounts_response())
  def search(client, path_params \\ %{}, params \\ %{}) do
    path_params_spec = schema(%{})
    params_spec = Norm.Delegate.delegate(&SquareUp.NormSchema.search_loyalty_accounts_request/0)

    response_spec = {:delegate, &SquareUp.ResponseSchema.search_loyalty_accounts_response/0}

    call(client, %{
      method: :post,
      path_params: path_params,
      params: params,
      path_params_spec: path_params_spec,
      params_spec: params_spec,
      response_spec: response_spec,
      path: "/v2/loyalty/accounts/search"
    })
  end
end
