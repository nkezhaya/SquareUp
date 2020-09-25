defmodule SquareUp.V2.CashDrawerShifts do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec list(SquareUp.Client.t(), %{
          location_id: binary(),
          sort_order: binary(),
          begin_time: binary(),
          end_time: binary(),
          limit: integer(),
          cursor: binary()
        }) :: SquareUp.Client.response(SquareUp.TypeSpecs.list_cash_drawer_shifts_response())
  def list(client, params \\ %{}) do
    norm_spec =
      schema(%{
        location_id: spec(is_binary()),
        sort_order: spec(is_binary()),
        begin_time: spec(is_binary()),
        end_time: spec(is_binary()),
        limit: spec(is_integer()),
        cursor: spec(is_binary())
      })

    response_spec = {:delegate, &SquareUp.ResponseSchema.list_cash_drawer_shifts_response/0}

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v2/cash-drawers/shifts"
    })
  end
end
