defmodule SquareUp.Evidence do
  import SquareUp.Client, only: [call: 2]

  def submit(client, params) do
    call(client, %{
      method: :post,
      params: params,
      path: "/v2/disputes/#{Map.get(params, "dispute_id")}/submit-evidence"
    })
  end
end
