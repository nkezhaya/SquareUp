defmodule SquareUp.V2.BankAccount do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec get(SquareUp.Client.t(), %{required(:bank_account_id) => binary()}, %{}, %{}) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.get_bank_account_response())
  def get(client, path_params \\ %{}, query_params \\ %{}, params \\ %{}) do
    path_params_spec = schema(%{bank_account_id: spec(is_binary())})
    query_params_spec = schema(%{})
    params_spec = schema(%{})

    response_spec = {:delegate, &SquareUp.ResponseSchema.get_bank_account_response/0}

    call(client, %{
      method: :get,
      path_params: path_params,
      query_params: query_params,
      params: params,
      path_params_spec: path_params_spec,
      query_params_spec: query_params_spec,
      params_spec: params_spec,
      response_spec: response_spec,
      path: "/v2/bank-accounts/{bank_account_id}"
    })
  end
end
