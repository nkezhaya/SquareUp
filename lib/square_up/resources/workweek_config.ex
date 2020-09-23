defmodule SquareUp.WorkweekConfig do
  import SquareUp.Client, only: [call: 2]

  def update(client, params) do
    call(client, %{
      method: :put,
      params: params,
      path: "/v2/labor/workweek-configs/#{Map.get(params, "id")}"
    })
  end
end
