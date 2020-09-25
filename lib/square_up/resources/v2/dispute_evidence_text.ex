defmodule SquareUp.V2.DisputeEvidenceText do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec create(
          SquareUp.Client.t(),
          %{dispute_id: binary()},
          SquareUp.TypeSpecs.create_dispute_evidence_text_request()
        ) :: SquareUp.Client.response(SquareUp.TypeSpecs.create_dispute_evidence_text_response())
  def create(client, path_params \\ %{}, params \\ %{}) do
    path_params_spec = schema(%{dispute_id: spec(is_binary())})

    params_spec =
      Norm.Delegate.delegate(&SquareUp.NormSchema.create_dispute_evidence_text_request/0)

    response_spec = {:delegate, &SquareUp.ResponseSchema.create_dispute_evidence_text_response/0}

    call(client, %{
      method: :post,
      path_params: path_params,
      params: params,
      path_params_spec: path_params_spec,
      params_spec: params_spec,
      response_spec: response_spec,
      path: "/v2/disputes/{dispute_id}/evidence_text"
    })
  end
end
