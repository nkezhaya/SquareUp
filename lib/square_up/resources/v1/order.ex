defmodule SquareUp.V1.Order do
  import Norm
  import SquareUp.Client, only: [call: 2]

  def retrieve(client, params \\ %{}) do
    norm_spec = schema(%{"location_id" => spec(is_binary()), "order_id" => spec(is_binary())})

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      path: "/v1/#{Map.get(params, "location_id")}/orders/#{Map.get(params, "order_id")}"
    })
  end

  def update(client, params \\ %{}) do
    norm_spec =
      schema(%{
        "location_id" => spec(is_binary()),
        "order_id" => spec(is_binary()),
        "body" => spec(SquareUp.Schema.v1_update_order_request())
      })

    call(client, %{
      method: :put,
      params: params,
      spec: norm_spec,
      path: "/v1/#{Map.get(params, "location_id")}/orders/#{Map.get(params, "order_id")}"
    })
  end
end
