defmodule SquareUp.Dispute do
  import SquareUp.Client, only: [call: 2]

  def retrieve(client, params) do
    call(client, %{
      method: :get,
      params: params,
      path: "/v2/disputes/#{Map.get(params, "dispute_id")}"
    })
  end

  def accept(client, params) do
    call(client, %{
      method: :post,
      params: params,
      path: "/v2/disputes/#{Map.get(params, "dispute_id")}/accept"
    })
  end
end
