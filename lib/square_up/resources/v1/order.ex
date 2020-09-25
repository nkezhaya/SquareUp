defmodule SquareUp.V1.Order do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec retrieve(%SquareUp.Client{}, %{location_id: binary(), order_id: binary()}) ::
          SquareUp.Client.response()
  def retrieve(client, params \\ %{}) do
    norm_spec = schema(%{location_id: spec(is_binary()), order_id: spec(is_binary())})

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      path: "/v1/#{Map.get(params, "location_id")}/orders/#{Map.get(params, "order_id")}"
    })
  end

  @spec update(%SquareUp.Client{}, %{
          location_id: binary(),
          order_id: binary(),
          body: SquareUp.Schema.v1_update_order_request()
        }) :: SquareUp.Client.response()
  def update(client, params \\ %{}) do
    norm_spec =
      schema(%{
        location_id: spec(is_binary()),
        order_id: spec(is_binary()),
        body: Norm.Delegate.delegate(&SquareUp.Schema.v1_update_order_request/0)
      })

    call(client, %{
      method: :put,
      params: params,
      spec: norm_spec,
      path: "/v1/#{Map.get(params, "location_id")}/orders/#{Map.get(params, "order_id")}"
    })
  end
end
