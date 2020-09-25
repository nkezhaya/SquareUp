defmodule SquareUp.V2.DisputeEvidenceText do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec create(%SquareUp.Client{}, %{
          dispute_id: binary(),
          body: SquareUp.Schema.create_dispute_evidence_text_request()
        }) :: SquareUp.Client.response()
  def create(client, params \\ %{}) do
    norm_spec =
      schema(%{
        dispute_id: spec(is_binary()),
        body: Norm.Delegate.delegate(&SquareUp.Schema.create_dispute_evidence_text_request/0)
      })

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      path: "/v2/disputes/#{Map.get(params, "dispute_id")}/evidence_text"
    })
  end
end
