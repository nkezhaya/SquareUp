defmodule SquareUp.V2.Location do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec create(SquareUp.Client.t(), SquareUp.TypeSpecs.create_location_request()) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.create_location_response())
  def create(client, params \\ %{}) do
    norm_spec = Norm.Delegate.delegate(&SquareUp.NormSchema.create_location_request/0)

    response_spec = {:delegate, &SquareUp.ResponseSchema.create_location_response/0}

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v2/locations"
    })
  end

  @spec retrieve(SquareUp.Client.t(), %{location_id: binary()}) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.retrieve_location_response())
  def retrieve(client, params \\ %{}) do
    norm_spec = schema(%{location_id: spec(is_binary())})

    response_spec = {:delegate, &SquareUp.ResponseSchema.retrieve_location_response/0}

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v2/locations/#{Map.get(params, "location_id")}"
    })
  end

  @spec update(SquareUp.Client.t(), %{
          location_id: binary(),
          body: SquareUp.TypeSpecs.update_location_request()
        }) :: SquareUp.Client.response(SquareUp.TypeSpecs.update_location_response())
  def update(client, params \\ %{}) do
    norm_spec =
      schema(%{
        location_id: spec(is_binary()),
        body: Norm.Delegate.delegate(&SquareUp.NormSchema.update_location_request/0)
      })

    response_spec = {:delegate, &SquareUp.ResponseSchema.update_location_response/0}

    call(client, %{
      method: :put,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v2/locations/#{Map.get(params, "location_id")}"
    })
  end
end
