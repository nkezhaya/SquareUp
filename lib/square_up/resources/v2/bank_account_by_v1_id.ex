defmodule SquareUp.V2.BankAccountByV1Id do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec get(SquareUp.Client.t(), %{v1_bank_account_id: binary()}) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.get_bank_account_by_v1_id_response())
  def get(client, params \\ %{}) do
    norm_spec = schema(%{v1_bank_account_id: spec(is_binary())})

    response_spec = {:delegate, &SquareUp.ResponseSchema.get_bank_account_by_v1_id_response/0}

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v2/bank-accounts/by-v1-id/#{Map.get(params, "v1_bank_account_id")}"
    })
  end
end
