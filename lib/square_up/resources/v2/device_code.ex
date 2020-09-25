defmodule SquareUp.V2.DeviceCode do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec get(SquareUp.Client.t(), %{id: binary()}) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.get_device_code_response())
  def get(client, params \\ %{}) do
    norm_spec = schema(%{id: spec(is_binary())})

    response_spec = {:delegate, &SquareUp.ResponseSchema.get_device_code_response/0}

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v2/devices/codes/#{Map.get(params, "id")}"
    })
  end

  @spec create(SquareUp.Client.t(), SquareUp.TypeSpecs.create_device_code_request()) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.create_device_code_response())
  def create(client, params \\ %{}) do
    norm_spec = Norm.Delegate.delegate(&SquareUp.NormSchema.create_device_code_request/0)

    response_spec = {:delegate, &SquareUp.ResponseSchema.create_device_code_response/0}

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v2/devices/codes"
    })
  end
end
