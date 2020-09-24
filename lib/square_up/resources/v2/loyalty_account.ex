defmodule SquareUp.V2.LoyaltyAccount do
  import Norm
  import SquareUp.Client, only: [call: 2]
  @spec retrieve(%SquareUp.Client{}, %{account_id: binary()}) :: SquareUp.Client.response()
  def retrieve(client, params \\ %{}) do
    norm_spec = schema(%{account_id: spec(is_binary())})

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      path: "/v2/loyalty/accounts/#{Map.get(params, "account_id")}"
    })
  end

  @spec create(%SquareUp.Client{}, SquareUp.Schema.create_loyalty_account_request()) ::
          SquareUp.Client.response()
  def create(client, params \\ %{}) do
    norm_spec = spec(SquareUp.Schema.create_loyalty_account_request())

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      path: "/v2/loyalty/accounts"
    })
  end
end
