defmodule SquareUp.V2.Merchant do
  import Norm
  import SquareUp.Client, only: [call: 2]
  @spec retrieve(%SquareUp.Client{}, %{merchant_id: binary()}) :: SquareUp.Client.response()
  def retrieve(client, params \\ %{}) do
    norm_spec = schema(%{merchant_id: spec(is_binary())})

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      path: "/v2/merchants/#{Map.get(params, "merchant_id")}"
    })
  end
end
