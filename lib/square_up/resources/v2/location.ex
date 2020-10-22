defmodule SquareUp.V2.Location do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec create(SquareUp.Client.t(), %{}, %{}, SquareUp.TypeSpecs.create_location_request()) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.create_location_response())
  def create(client, path_params \\ %{}, query_params \\ %{}, params \\ %{}) do
    path_params_spec = schema(%{})
    query_params_spec = schema(%{})
    params_spec = Norm.Delegate.delegate(&SquareUp.NormSchema.create_location_request/0)

    response_spec = {:delegate, &SquareUp.ResponseSchema.create_location_response/0}

    call(client, %{
      method: :post,
      path_params: path_params,
      query_params: query_params,
      params: params,
      path_params_spec: path_params_spec,
      query_params_spec: query_params_spec,
      params_spec: params_spec,
      response_spec: response_spec,
      path: "/v2/locations"
    })
  end

  @spec retrieve(SquareUp.Client.t(), %{required(:location_id) => binary()}, %{}, %{}) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.retrieve_location_response())
  def retrieve(client, path_params \\ %{}, query_params \\ %{}, params \\ %{}) do
    path_params_spec = schema(%{location_id: spec(is_binary())})
    query_params_spec = schema(%{})
    params_spec = schema(%{})

    response_spec = {:delegate, &SquareUp.ResponseSchema.retrieve_location_response/0}

    call(client, %{
      method: :get,
      path_params: path_params,
      query_params: query_params,
      params: params,
      path_params_spec: path_params_spec,
      query_params_spec: query_params_spec,
      params_spec: params_spec,
      response_spec: response_spec,
      path: "/v2/locations/{location_id}"
    })
  end

  @spec update(
          SquareUp.Client.t(),
          %{required(:location_id) => binary()},
          %{},
          SquareUp.TypeSpecs.update_location_request()
        ) :: SquareUp.Client.response(SquareUp.TypeSpecs.update_location_response())
  def update(client, path_params \\ %{}, query_params \\ %{}, params \\ %{}) do
    path_params_spec = schema(%{location_id: spec(is_binary())})
    query_params_spec = schema(%{})
    params_spec = Norm.Delegate.delegate(&SquareUp.NormSchema.update_location_request/0)

    response_spec = {:delegate, &SquareUp.ResponseSchema.update_location_response/0}

    call(client, %{
      method: :put,
      path_params: path_params,
      query_params: query_params,
      params: params,
      path_params_spec: path_params_spec,
      query_params_spec: query_params_spec,
      params_spec: params_spec,
      response_spec: response_spec,
      path: "/v2/locations/{location_id}"
    })
  end
end
