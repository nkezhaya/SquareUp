defmodule SquareUp.V2.CashDrawerShift do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec retrieve(SquareUp.Client.t(), %{required(:shift_id) => binary()}, %{
          required(:location_id) => binary()
        }) :: SquareUp.Client.response(SquareUp.TypeSpecs.retrieve_cash_drawer_shift_response())
  def retrieve(client, path_params \\ %{}, params \\ %{}) do
    path_params_spec = schema(%{shift_id: spec(is_binary())})
    params_spec = schema(%{location_id: spec(is_binary())})

    response_spec = {:delegate, &SquareUp.ResponseSchema.retrieve_cash_drawer_shift_response/0}

    call(client, %{
      method: :get,
      path_params: path_params,
      params: params,
      path_params_spec: path_params_spec,
      params_spec: params_spec,
      response_spec: response_spec,
      path: "/v2/cash-drawers/shifts/{shift_id}"
    })
  end
end
