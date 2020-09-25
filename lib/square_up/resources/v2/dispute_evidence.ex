defmodule SquareUp.V2.DisputeEvidence do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec remove(SquareUp.Client.t(), %{dispute_id: binary(), evidence_id: binary()}) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.remove_dispute_evidence_response())
  def remove(client, params \\ %{}) do
    norm_spec = schema(%{dispute_id: spec(is_binary()), evidence_id: spec(is_binary())})

    response_spec = {:delegate, &SquareUp.ResponseSchema.remove_dispute_evidence_response/0}

    call(client, %{
      method: :delete,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path:
        "/v2/disputes/#{Map.get(params, "dispute_id")}/evidence/#{Map.get(params, "evidence_id")}"
    })
  end

  @spec retrieve(SquareUp.Client.t(), %{dispute_id: binary(), evidence_id: binary()}) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.retrieve_dispute_evidence_response())
  def retrieve(client, params \\ %{}) do
    norm_spec = schema(%{dispute_id: spec(is_binary()), evidence_id: spec(is_binary())})

    response_spec = {:delegate, &SquareUp.ResponseSchema.retrieve_dispute_evidence_response/0}

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path:
        "/v2/disputes/#{Map.get(params, "dispute_id")}/evidence/#{Map.get(params, "evidence_id")}"
    })
  end

  @spec list(SquareUp.Client.t(), %{dispute_id: binary()}) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.list_dispute_evidence_response())
  def list(client, params \\ %{}) do
    norm_spec = schema(%{dispute_id: spec(is_binary())})

    response_spec = {:delegate, &SquareUp.ResponseSchema.list_dispute_evidence_response/0}

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v2/disputes/#{Map.get(params, "dispute_id")}/evidence"
    })
  end
end
