defmodule SquareUp.V2.Catalog do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec list(%SquareUp.Client{}, %{cursor: binary(), types: binary()}) ::
          SquareUp.Client.response()
  def list(client, params \\ %{}) do
    norm_spec = schema(%{cursor: spec(is_binary()), types: spec(is_binary())})

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      path: "/v2/catalog/list"
    })
  end
end
