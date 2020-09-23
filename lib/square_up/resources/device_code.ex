defmodule SquareUp.DeviceCode do
  import SquareUp.Client, only: [call: 2]

  def get(client, params) do
    call(client, %{
      method: :get,
      params: params,
      path: "/v2/devices/codes/#{Map.get(params, "id")}"
    })
  end

  def create(client, params) do
    call(client, %{
      method: :post,
      params: params,
      path: "/v2/devices/codes"
    })
  end
end
