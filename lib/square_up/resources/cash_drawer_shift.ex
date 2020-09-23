defmodule SquareUp.CashDrawerShift do
  import SquareUp.Client, only: [call: 2]

  def retrieve(client, params) do
    call(client, %{
      method: :get,
      params: params,
      path: "/v2/cash-drawers/shifts/#{Map.get(params, "shift_id")}"
    })
  end
end
