defmodule SquareUp.V2.CashDrawerShiftEvents do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec list(SquareUp.Client.t(), %{
          location_id: binary(),
          shift_id: binary(),
          limit: integer(),
          cursor: binary()
        }) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.list_cash_drawer_shift_events_response())
  def list(client, params \\ %{}) do
    norm_spec =
      schema(%{
        location_id: spec(is_binary()),
        shift_id: spec(is_binary()),
        limit: spec(is_integer()),
        cursor: spec(is_binary())
      })

    response_spec = {:delegate, &SquareUp.ResponseSchema.list_cash_drawer_shift_events_response/0}

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v2/cash-drawers/shifts/#{Map.get(params, "shift_id")}/events"
    })
  end
end
