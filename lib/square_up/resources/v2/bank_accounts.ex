defmodule SquareUp.V2.BankAccounts do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec list(%SquareUp.Client{}, %{cursor: binary(), limit: integer(), location_id: binary()}) ::
          SquareUp.Client.response()
  def list(client, params \\ %{}) do
    norm_spec =
      schema(%{
        cursor: spec(is_binary()),
        limit: spec(is_integer()),
        location_id: spec(is_binary())
      })

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      path: "/v2/bank-accounts"
    })
  end
end
