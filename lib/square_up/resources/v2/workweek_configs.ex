defmodule SquareUp.V2.WorkweekConfigs do
  import Norm
  import SquareUp.Client, only: [call: 2]

  def list(client, params) do
    norm_spec = schema(%{"limit" => spec(is_integer()), "cursor" => spec(is_binary())})

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      path: "/v2/labor/workweek-configs"
    })
  end
end
