defmodule SquareUp.V2.Catalog do
  import Norm
  import SquareUp.Client, only: [call: 2]

  def list(client, params) do
    norm_spec = schema(%{"cursor" => spec(is_binary()), "types" => spec(is_binary())})

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      path: "/v2/catalog/list"
    })
  end
end
