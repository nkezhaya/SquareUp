defmodule SquareUp.V2.LoyaltyAccount do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec retrieve(SquareUp.Client.t(), %{account_id: binary()}) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.retrieve_loyalty_account_response())
  def retrieve(client, params \\ %{}) do
    norm_spec = schema(%{account_id: spec(is_binary())})

    response_spec = {:delegate, &SquareUp.ResponseSchema.retrieve_loyalty_account_response/0}

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v2/loyalty/accounts/#{Map.get(params, "account_id")}"
    })
  end

  @spec create(SquareUp.Client.t(), SquareUp.TypeSpecs.create_loyalty_account_request()) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.create_loyalty_account_response())
  def create(client, params \\ %{}) do
    norm_spec = Norm.Delegate.delegate(&SquareUp.NormSchema.create_loyalty_account_request/0)

    response_spec = {:delegate, &SquareUp.ResponseSchema.create_loyalty_account_response/0}

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v2/loyalty/accounts"
    })
  end
end
