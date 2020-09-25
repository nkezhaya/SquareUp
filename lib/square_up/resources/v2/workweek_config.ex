defmodule SquareUp.V2.WorkweekConfig do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec update(SquareUp.Client.t(), %{
          id: binary(),
          body: SquareUp.TypeSpecs.update_workweek_config_request()
        }) :: SquareUp.Client.response(SquareUp.TypeSpecs.update_workweek_config_response())
  def update(client, params \\ %{}) do
    norm_spec =
      schema(%{
        id: spec(is_binary()),
        body: Norm.Delegate.delegate(&SquareUp.NormSchema.update_workweek_config_request/0)
      })

    response_spec = {:delegate, &SquareUp.ResponseSchema.update_workweek_config_response/0}

    call(client, %{
      method: :put,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v2/labor/workweek-configs/#{Map.get(params, "id")}"
    })
  end
end
