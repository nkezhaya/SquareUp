defmodule SquareUp.V2.WorkweekConfig do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec update(%SquareUp.Client{}, %{
          id: binary(),
          body: SquareUp.Schema.update_workweek_config_request()
        }) :: SquareUp.Client.response()
  def update(client, params \\ %{}) do
    norm_spec =
      schema(%{
        id: spec(is_binary()),
        body: Norm.Delegate.delegate(&SquareUp.Schema.update_workweek_config_request/0)
      })

    call(client, %{
      method: :put,
      params: params,
      spec: norm_spec,
      path: "/v2/labor/workweek-configs/#{Map.get(params, "id")}"
    })
  end
end
