defmodule SquareUp.V2.CashDrawerShift do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec retrieve(SquareUp.Client.t(), %{location_id: binary(), shift_id: binary()}) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.retrieve_cash_drawer_shift_response())
  def retrieve(client, params \\ %{}) do
    norm_spec = schema(%{location_id: spec(is_binary()), shift_id: spec(is_binary())})

    response_spec = {:delegate, &SquareUp.ResponseSchema.retrieve_cash_drawer_shift_response/0}

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v2/cash-drawers/shifts/#{Map.get(params, "shift_id")}"
    })
  end
end
