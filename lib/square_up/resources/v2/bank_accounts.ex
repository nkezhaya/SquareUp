defmodule SquareUp.V2.BankAccounts do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec list(SquareUp.Client.t(), %{}, %{
          cursor: binary(),
          limit: integer(),
          location_id: binary()
        }) :: SquareUp.Client.response(SquareUp.TypeSpecs.list_bank_accounts_response())
  def list(client, path_params \\ %{}, params \\ %{}) do
    path_params_spec = schema(%{})

    params_spec =
      schema(%{
        cursor: spec(is_binary()),
        limit: spec(is_integer()),
        location_id: spec(is_binary())
      })

    response_spec = {:delegate, &SquareUp.ResponseSchema.list_bank_accounts_response/0}

    call(client, %{
      method: :get,
      path_params: path_params,
      params: params,
      path_params_spec: path_params_spec,
      params_spec: params_spec,
      response_spec: response_spec,
      path: "/v2/bank-accounts"
    })
  end
end
