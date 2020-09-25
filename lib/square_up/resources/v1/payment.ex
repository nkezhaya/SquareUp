defmodule SquareUp.V1.Payment do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec retrieve(SquareUp.Client.t(), %{location_id: binary(), payment_id: binary()}) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.v1_payment())
  def retrieve(client, params \\ %{}) do
    norm_spec = schema(%{location_id: spec(is_binary()), payment_id: spec(is_binary())})

    response_spec = {:delegate, &SquareUp.ResponseSchema.v1_payment/0}

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v1/#{Map.get(params, "location_id")}/payments/#{Map.get(params, "payment_id")}"
    })
  end
end
