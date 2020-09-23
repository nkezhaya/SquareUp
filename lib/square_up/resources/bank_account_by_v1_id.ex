defmodule SquareUp.BankAccountByV1Id do
  import SquareUp.Client, only: [call: 2]

  def get(client, params) do
    call(client, %{
      method: :get,
      params: params,
      path: "/v2/bank-accounts/by-v1-id/#{Map.get(params, "v1_bank_account_id")}"
    })
  end
end
