defmodule SquareUp.V2.WorkweekConfig do
  import Norm
  import SquareUp.Client, only: [call: 2]

  def update(client, params) do
    norm_spec =
      schema(%{
        "id" => spec(is_binary()),
        "body" => spec(SquareUp.Schema.update_workweek_config_request())
      })

    call(client, %{
      method: :put,
      params: params,
      spec: norm_spec,
      path: "/v2/labor/workweek-configs/#{Map.get(params, "id")}"
    })
  end
end
