defmodule SquareUp.V2.CashDrawerShift do
  import Norm
  import SquareUp.Client, only: [call: 2]

  def retrieve(client, params) do
    norm_spec = schema(%{"location_id" => spec(is_binary()), "shift_id" => spec(is_binary())})

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      path: "/v2/cash-drawers/shifts/#{Map.get(params, "shift_id")}"
    })
  end
end
