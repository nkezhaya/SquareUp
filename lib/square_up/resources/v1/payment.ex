defmodule SquareUp.V1.Payment do
  import Norm
  import SquareUp.Client, only: [call: 2]

  def retrieve(client, params) do
    norm_spec = schema(%{"location_id" => spec(is_binary()), "payment_id" => spec(is_binary())})

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      path: "/v1/#{Map.get(params, "location_id")}/payments/#{Map.get(params, "payment_id")}"
    })
  end
end
