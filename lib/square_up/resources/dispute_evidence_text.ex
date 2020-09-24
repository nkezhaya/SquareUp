defmodule SquareUp.DisputeEvidenceText do
  import Norm
  import SquareUp.Client, only: [call: 2]

  def create(client, params) do
    norm_spec =
      schema(%{
        "dispute_id" => spec(is_binary()),
        "body" => spec(SquareUp.Schema.create_dispute_evidence_text_request())
      })

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      path: "/v2/disputes/#{Map.get(params, "dispute_id")}/evidence_text"
    })
  end
end
