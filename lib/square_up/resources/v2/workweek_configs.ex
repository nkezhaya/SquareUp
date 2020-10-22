defmodule SquareUp.V2.WorkweekConfigs do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec list(SquareUp.Client.t(), %{}, %{}, %{
          optional(:limit) => integer(),
          optional(:cursor) => binary()
        }) :: SquareUp.Client.response(SquareUp.TypeSpecs.list_workweek_configs_response())
  def list(client, path_params \\ %{}, params \\ %{}, query_params \\ %{}) do
    path_params_spec = schema(%{})
    params_spec = schema(%{})
    query_params_spec = schema(%{limit: spec(is_integer()), cursor: spec(is_binary())})

    response_spec = {:delegate, &SquareUp.ResponseSchema.list_workweek_configs_response/0}

    call(client, %{
      method: :get,
      path_params: path_params,
      params: params,
      query_params: query_params,
      path_params_spec: path_params_spec,
      params_spec: params_spec,
      query_params_spec: query_params_spec,
      response_spec: response_spec,
      path: "/v2/labor/workweek-configs"
    })
  end
end
