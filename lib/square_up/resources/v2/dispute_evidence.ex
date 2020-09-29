defmodule SquareUp.V2.DisputeEvidence do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec remove(
          SquareUp.Client.t(),
          %{required(:dispute_id) => binary(), required(:evidence_id) => binary()},
          %{}
        ) :: SquareUp.Client.response(SquareUp.TypeSpecs.remove_dispute_evidence_response())
  def remove(client, path_params \\ %{}, params \\ %{}) do
    path_params_spec = schema(%{dispute_id: spec(is_binary()), evidence_id: spec(is_binary())})
    params_spec = schema(%{})

    response_spec = {:delegate, &SquareUp.ResponseSchema.remove_dispute_evidence_response/0}

    call(client, %{
      method: :delete,
      path_params: path_params,
      params: params,
      path_params_spec: path_params_spec,
      params_spec: params_spec,
      response_spec: response_spec,
      path: "/v2/disputes/{dispute_id}/evidence/{evidence_id}"
    })
  end

  @spec retrieve(
          SquareUp.Client.t(),
          %{required(:dispute_id) => binary(), required(:evidence_id) => binary()},
          %{}
        ) :: SquareUp.Client.response(SquareUp.TypeSpecs.retrieve_dispute_evidence_response())
  def retrieve(client, path_params \\ %{}, params \\ %{}) do
    path_params_spec = schema(%{dispute_id: spec(is_binary()), evidence_id: spec(is_binary())})
    params_spec = schema(%{})

    response_spec = {:delegate, &SquareUp.ResponseSchema.retrieve_dispute_evidence_response/0}

    call(client, %{
      method: :get,
      path_params: path_params,
      params: params,
      path_params_spec: path_params_spec,
      params_spec: params_spec,
      response_spec: response_spec,
      path: "/v2/disputes/{dispute_id}/evidence/{evidence_id}"
    })
  end

  @spec list(SquareUp.Client.t(), %{required(:dispute_id) => binary()}, %{}) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.list_dispute_evidence_response())
  def list(client, path_params \\ %{}, params \\ %{}) do
    path_params_spec = schema(%{dispute_id: spec(is_binary())})
    params_spec = schema(%{})

    response_spec = {:delegate, &SquareUp.ResponseSchema.list_dispute_evidence_response/0}

    call(client, %{
      method: :get,
      path_params: path_params,
      params: params,
      path_params_spec: path_params_spec,
      params_spec: params_spec,
      response_spec: response_spec,
      path: "/v2/disputes/{dispute_id}/evidence"
    })
  end
end
