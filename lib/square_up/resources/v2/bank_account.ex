defmodule SquareUp.V2.BankAccount do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec get(SquareUp.Client.t(), %{bank_account_id: binary()}) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.get_bank_account_response())
  def get(client, params \\ %{}) do
    norm_spec = schema(%{bank_account_id: spec(is_binary())})

    response_spec = {:delegate, &SquareUp.ResponseSchema.get_bank_account_response/0}

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v2/bank-accounts/#{Map.get(params, "bank_account_id")}"
    })
  end
end
