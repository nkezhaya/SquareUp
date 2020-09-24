defmodule SquareUp.V2.BankAccount do
  import Norm
  import SquareUp.Client, only: [call: 2]

  def get(client, params \\ %{}) do
    norm_spec = schema(%{"bank_account_id" => spec(is_binary())})

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      path: "/v2/bank-accounts/#{Map.get(params, "bank_account_id")}"
    })
  end
end
