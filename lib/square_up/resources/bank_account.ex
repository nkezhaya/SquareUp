defmodule SquareUp.BankAccount do
  import SquareUp.Client, only: [call: 2]

  def get(client, params) do
    call(client, %{
      method: :get,
      params: params,
      path: "/v2/bank-accounts/#{Map.get(params, "bank_account_id")}"
    })
  end
end
