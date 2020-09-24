defmodule SquareUp.V2.CustomerSegment do
  import Norm
  import SquareUp.Client, only: [call: 2]

  def retrieve(client, params \\ %{}) do
    norm_spec = schema(%{"segment_id" => spec(is_binary())})

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      path: "/v2/customers/segments/#{Map.get(params, "segment_id")}"
    })
  end
end
