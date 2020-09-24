defmodule SquareUp.V2.Locations do
  import Norm
  import SquareUp.Client, only: [call: 2]
  @spec list(%SquareUp.Client{}, %{}) :: SquareUp.Client.response()
  def list(client, params \\ %{}) do
    norm_spec = schema(%{})

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      path: "/v2/locations"
    })
  end
end
