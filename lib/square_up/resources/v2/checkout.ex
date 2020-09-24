defmodule SquareUp.V2.Checkout do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec create(%SquareUp.Client{}, %{
          location_id: binary(),
          body: SquareUp.Schema.create_checkout_request()
        }) :: SquareUp.Client.response()
  def create(client, params \\ %{}) do
    norm_spec =
      schema(%{
        location_id: spec(is_binary()),
        body: spec(SquareUp.Schema.create_checkout_request())
      })

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      path: "/v2/locations/#{Map.get(params, "location_id")}/checkouts"
    })
  end
end
