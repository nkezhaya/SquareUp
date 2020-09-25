defmodule SquareUp.V1.Order do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec retrieve(SquareUp.Client.t(), %{location_id: binary(), order_id: binary()}) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.v1_order())
  def retrieve(client, params \\ %{}) do
    norm_spec = schema(%{location_id: spec(is_binary()), order_id: spec(is_binary())})

    response_spec = {:delegate, &SquareUp.ResponseSchema.v1_order/0}

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v1/#{Map.get(params, "location_id")}/orders/#{Map.get(params, "order_id")}"
    })
  end

  @spec update(SquareUp.Client.t(), %{
          location_id: binary(),
          order_id: binary(),
          body: SquareUp.TypeSpecs.v1_update_order_request()
        }) :: SquareUp.Client.response(SquareUp.TypeSpecs.v1_order())
  def update(client, params \\ %{}) do
    norm_spec =
      schema(%{
        location_id: spec(is_binary()),
        order_id: spec(is_binary()),
        body: Norm.Delegate.delegate(&SquareUp.NormSchema.v1_update_order_request/0)
      })

    response_spec = {:delegate, &SquareUp.ResponseSchema.v1_order/0}

    call(client, %{
      method: :put,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v1/#{Map.get(params, "location_id")}/orders/#{Map.get(params, "order_id")}"
    })
  end
end
