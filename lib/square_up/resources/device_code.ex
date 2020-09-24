defmodule SquareUp.DeviceCode do
  import Norm
  import SquareUp.Client, only: [call: 2]

  def get(client, params) do
    norm_spec = schema(%{"id" => spec(is_binary())})

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      path: "/v2/devices/codes/#{Map.get(params, "id")}"
    })
  end

  def create(client, params) do
    norm_spec = spec(SquareUp.Schema.create_device_code_request())

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      path: "/v2/devices/codes"
    })
  end
end
