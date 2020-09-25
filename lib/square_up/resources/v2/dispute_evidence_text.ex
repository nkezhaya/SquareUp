defmodule SquareUp.V2.DisputeEvidenceText do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec create(SquareUp.Client.t(), %{
          dispute_id: binary(),
          body: SquareUp.TypeSpecs.create_dispute_evidence_text_request()
        }) :: SquareUp.Client.response(SquareUp.TypeSpecs.create_dispute_evidence_text_response())
  def create(client, params \\ %{}) do
    norm_spec =
      schema(%{
        dispute_id: spec(is_binary()),
        body: Norm.Delegate.delegate(&SquareUp.NormSchema.create_dispute_evidence_text_request/0)
      })

    response_spec = {:delegate, &SquareUp.ResponseSchema.create_dispute_evidence_text_response/0}

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v2/disputes/#{Map.get(params, "dispute_id")}/evidence_text"
    })
  end
end
