defmodule SquareUp.CustomerSegment do
  import SquareUp.Client, only: [call: 2]

  def retrieve(client, params) do
    call(client, %{
      method: :get,
      params: params,
      path: "/v2/customers/segments/#{Map.get(params, "segment_id")}"
    })
  end
end
