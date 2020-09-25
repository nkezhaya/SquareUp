defmodule SquareUp.V2.Evidence do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec submit(SquareUp.Client.t(), %{dispute_id: binary()}) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.submit_evidence_response())
  def submit(client, params \\ %{}) do
    norm_spec = schema(%{dispute_id: spec(is_binary())})

    response_spec = {:delegate, &SquareUp.ResponseSchema.submit_evidence_response/0}

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v2/disputes/#{Map.get(params, "dispute_id")}/submit-evidence"
    })
  end
end
