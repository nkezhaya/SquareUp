defmodule SquareUp.Checkout do
  import SquareUp.Client, only: [call: 2]

  def create(client, params) do
    call(client, %{
      method: :post,
      params: params,
      path: "/v2/locations/#{Map.get(params, "location_id")}/checkouts"
    })
  end
end
