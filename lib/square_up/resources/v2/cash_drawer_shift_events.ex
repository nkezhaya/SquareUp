defmodule SquareUp.V2.CashDrawerShiftEvents do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec list(SquareUp.Client.t(), %{required(:shift_id) => binary()}, %{
          required(:location_id) => binary(),
          optional(:limit) => integer(),
          optional(:cursor) => binary()
        }) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.list_cash_drawer_shift_events_response())
  def list(client, path_params \\ %{}, params \\ %{}) do
    path_params_spec = schema(%{shift_id: spec(is_binary())})

    params_spec =
      schema(%{
        location_id: spec(is_binary()),
        limit: spec(is_integer()),
        cursor: spec(is_binary())
      })

    response_spec = {:delegate, &SquareUp.ResponseSchema.list_cash_drawer_shift_events_response/0}

    call(client, %{
      method: :get,
      path_params: path_params,
      params: params,
      path_params_spec: path_params_spec,
      params_spec: params_spec,
      response_spec: response_spec,
      path: "/v2/cash-drawers/shifts/{shift_id}/events"
    })
  end
end
