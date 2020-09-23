defmodule SquareUp.Location do
  import SquareUp.Client, only: [call: 2]

  def create(client, params) do
    call(client, %{
      method: :post,
      params: params,
      path: "/v2/locations"
    })
  end

  def retrieve(client, params) do
    call(client, %{
      method: :get,
      params: params,
      path: "/v2/locations/#{Map.get(params, "location_id")}"
    })
  end

  def update(client, params) do
    call(client, %{
      method: :put,
      params: params,
      path: "/v2/locations/#{Map.get(params, "location_id")}"
    })
  end
end
