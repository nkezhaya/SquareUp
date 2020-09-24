defmodule SquareUp.V2.Evidence do
  import Norm
  import SquareUp.Client, only: [call: 2]

  def submit(client, params) do
    norm_spec = schema(%{"dispute_id" => spec(is_binary())})

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      path: "/v2/disputes/#{Map.get(params, "dispute_id")}/submit-evidence"
    })
  end
end
