defmodule SquareUp.V2.DeviceCode do
  import Norm
  import SquareUp.Client, only: [call: 2]
  @spec get(%SquareUp.Client{}, %{id: binary()}) :: SquareUp.Client.response()
  def get(client, params \\ %{}) do
    norm_spec = schema(%{id: spec(is_binary())})

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      path: "/v2/devices/codes/#{Map.get(params, "id")}"
    })
  end

  @spec create(%SquareUp.Client{}, SquareUp.Schema.create_device_code_request()) ::
          SquareUp.Client.response()
  def create(client, params \\ %{}) do
    norm_spec = spec(SquareUp.Schema.create_device_code_request())

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      path: "/v2/devices/codes"
    })
  end
end
