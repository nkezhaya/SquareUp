defmodule SquareUp.V2.DeviceCodes do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec list(%SquareUp.Client{}, %{
          cursor: binary(),
          location_id: binary(),
          product_type: binary()
        }) :: SquareUp.Client.response()
  def list(client, params \\ %{}) do
    norm_spec =
      schema(%{
        cursor: spec(is_binary()),
        location_id: spec(is_binary()),
        product_type: spec(is_binary())
      })

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      path: "/v2/devices/codes"
    })
  end
end
