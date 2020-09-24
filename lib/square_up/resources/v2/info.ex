defmodule SquareUp.V2.Info do
  import Norm
  import SquareUp.Client, only: [call: 2]

  def catalog(client, params \\ %{}) do
    norm_spec = schema(%{})

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      path: "/v2/catalog/info"
    })
  end
end
