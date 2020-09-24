defmodule SquareUp.V2.BankAccountByV1Id do
  import Norm
  import SquareUp.Client, only: [call: 2]
  @spec get(%SquareUp.Client{}, %{v1_bank_account_id: binary()}) :: SquareUp.Client.response()
  def get(client, params \\ %{}) do
    norm_spec = schema(%{v1_bank_account_id: spec(is_binary())})

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      path: "/v2/bank-accounts/by-v1-id/#{Map.get(params, "v1_bank_account_id")}"
    })
  end
end
