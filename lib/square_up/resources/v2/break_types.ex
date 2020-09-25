defmodule SquareUp.V2.BreakTypes do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec list(SquareUp.Client.t(), %{}, %{
          location_id: binary(),
          limit: integer(),
          cursor: binary()
        }) :: SquareUp.Client.response(SquareUp.TypeSpecs.list_break_types_response())
  def list(client, path_params \\ %{}, params \\ %{}) do
    path_params_spec = schema(%{})

    params_spec =
      schema(%{
        location_id: spec(is_binary()),
        limit: spec(is_integer()),
        cursor: spec(is_binary())
      })

    response_spec = {:delegate, &SquareUp.ResponseSchema.list_break_types_response/0}

    call(client, %{
      method: :get,
      path_params: path_params,
      params: params,
      path_params_spec: path_params_spec,
      params_spec: params_spec,
      response_spec: response_spec,
      path: "/v2/labor/break-types"
    })
  end
end
