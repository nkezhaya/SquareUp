defmodule SquareUp.V2.DeviceCode do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec get(SquareUp.Client.t(), %{required(:id) => binary()}, %{}, %{}) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.get_device_code_response())
  def get(client, path_params \\ %{}, params \\ %{}, query_params \\ %{}) do
    path_params_spec = schema(%{id: spec(is_binary())})
    params_spec = schema(%{})
    query_params_spec = schema(%{})

    response_spec = {:delegate, &SquareUp.ResponseSchema.get_device_code_response/0}

    call(client, %{
      method: :get,
      path_params: path_params,
      params: params,
      query_params: query_params,
      path_params_spec: path_params_spec,
      params_spec: params_spec,
      query_params_spec: query_params_spec,
      response_spec: response_spec,
      path: "/v2/devices/codes/{id}"
    })
  end

  @spec create(SquareUp.Client.t(), %{}, SquareUp.TypeSpecs.create_device_code_request(), %{}) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.create_device_code_response())
  def create(client, path_params \\ %{}, params \\ %{}, query_params \\ %{}) do
    path_params_spec = schema(%{})
    params_spec = Norm.Delegate.delegate(&SquareUp.NormSchema.create_device_code_request/0)
    query_params_spec = schema(%{})

    response_spec = {:delegate, &SquareUp.ResponseSchema.create_device_code_response/0}

    call(client, %{
      method: :post,
      path_params: path_params,
      params: params,
      query_params: query_params,
      path_params_spec: path_params_spec,
      params_spec: params_spec,
      query_params_spec: query_params_spec,
      response_spec: response_spec,
      path: "/v2/devices/codes"
    })
  end
end
