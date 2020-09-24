defmodule SquareUp.V2.Dispute do
  import Norm
  import SquareUp.Client, only: [call: 2]
  @spec retrieve(%SquareUp.Client{}, %{dispute_id: binary()}) :: SquareUp.Client.response()
  def retrieve(client, params \\ %{}) do
    norm_spec = schema(%{dispute_id: spec(is_binary())})

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      path: "/v2/disputes/#{Map.get(params, "dispute_id")}"
    })
  end

  @spec accept(%SquareUp.Client{}, %{dispute_id: binary()}) :: SquareUp.Client.response()
  def accept(client, params \\ %{}) do
    norm_spec = schema(%{dispute_id: spec(is_binary())})

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      path: "/v2/disputes/#{Map.get(params, "dispute_id")}/accept"
    })
  end
end
