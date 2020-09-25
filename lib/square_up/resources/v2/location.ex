defmodule SquareUp.V2.Location do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec create(%SquareUp.Client{}, SquareUp.Schema.create_location_request()) ::
          SquareUp.Client.response()
  def create(client, params \\ %{}) do
    norm_spec = Norm.Delegate.delegate(&SquareUp.Schema.create_location_request/0)

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      path: "/v2/locations"
    })
  end

  @spec retrieve(%SquareUp.Client{}, %{location_id: binary()}) :: SquareUp.Client.response()
  def retrieve(client, params \\ %{}) do
    norm_spec = schema(%{location_id: spec(is_binary())})

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      path: "/v2/locations/#{Map.get(params, "location_id")}"
    })
  end

  @spec update(%SquareUp.Client{}, %{
          location_id: binary(),
          body: SquareUp.Schema.update_location_request()
        }) :: SquareUp.Client.response()
  def update(client, params \\ %{}) do
    norm_spec =
      schema(%{
        location_id: spec(is_binary()),
        body: Norm.Delegate.delegate(&SquareUp.Schema.update_location_request/0)
      })

    call(client, %{
      method: :put,
      params: params,
      spec: norm_spec,
      path: "/v2/locations/#{Map.get(params, "location_id")}"
    })
  end
end
