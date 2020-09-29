defmodule SquareUp.V2.Evidence do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec submit(SquareUp.Client.t(), %{required(:dispute_id) => binary()}, %{}) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.submit_evidence_response())
  def submit(client, path_params \\ %{}, params \\ %{}) do
    path_params_spec = schema(%{dispute_id: spec(is_binary())})
    params_spec = schema(%{})

    response_spec = {:delegate, &SquareUp.ResponseSchema.submit_evidence_response/0}

    call(client, %{
      method: :post,
      path_params: path_params,
      params: params,
      path_params_spec: path_params_spec,
      params_spec: params_spec,
      response_spec: response_spec,
      path: "/v2/disputes/{dispute_id}/submit-evidence"
    })
  end
end
