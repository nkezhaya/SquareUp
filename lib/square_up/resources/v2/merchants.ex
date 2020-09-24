defmodule SquareUp.V2.Merchants do
  import Norm
  import SquareUp.Client, only: [call: 2]
  @spec list(%SquareUp.Client{}, %{cursor: integer()}) :: SquareUp.Client.response()
  def list(client, params \\ %{}) do
    norm_spec = schema(%{cursor: spec(is_integer())})

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      path: "/v2/merchants"
    })
  end
end
