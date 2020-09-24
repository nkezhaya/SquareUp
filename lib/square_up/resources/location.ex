defmodule SquareUp.Location do
  import Norm
  import SquareUp.Client, only: [call: 2]

  def create(client, params) do
    norm_spec = spec(SquareUp.Schema.create_location_request())

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      path: "/v2/locations"
    })
  end

  def retrieve(client, params) do
    norm_spec = schema(%{"location_id" => spec(is_binary())})

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      path: "/v2/locations/#{Map.get(params, "location_id")}"
    })
  end

  def update(client, params) do
    norm_spec =
      schema(%{
        "location_id" => spec(is_binary()),
        "body" => spec(SquareUp.Schema.update_location_request())
      })

    call(client, %{
      method: :put,
      params: params,
      spec: norm_spec,
      path: "/v2/locations/#{Map.get(params, "location_id")}"
    })
  end
end
