defmodule SquareUp.V2.WorkweekConfigs do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec list(SquareUp.Client.t(), %{limit: integer(), cursor: binary()}) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.list_workweek_configs_response())
  def list(client, params \\ %{}) do
    norm_spec = schema(%{limit: spec(is_integer()), cursor: spec(is_binary())})

    response_spec = {:delegate, &SquareUp.ResponseSchema.list_workweek_configs_response/0}

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v2/labor/workweek-configs"
    })
  end
end
