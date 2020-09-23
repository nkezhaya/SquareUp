defmodule SquareUp.DisputeEvidenceText do
  import SquareUp.Client, only: [call: 2]

  def create(client, params) do
    call(client, %{
      method: :post,
      params: params,
      path: "/v2/disputes/#{Map.get(params, "dispute_id")}/evidence_text"
    })
  end
end
