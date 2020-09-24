defmodule SquareUp.V2.DisputeEvidence do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec remove(%SquareUp.Client{}, %{dispute_id: binary(), evidence_id: binary()}) ::
          SquareUp.Client.response()
  def remove(client, params \\ %{}) do
    norm_spec = schema(%{dispute_id: spec(is_binary()), evidence_id: spec(is_binary())})

    call(client, %{
      method: :delete,
      params: params,
      spec: norm_spec,
      path:
        "/v2/disputes/#{Map.get(params, "dispute_id")}/evidence/#{Map.get(params, "evidence_id")}"
    })
  end

  @spec retrieve(%SquareUp.Client{}, %{dispute_id: binary(), evidence_id: binary()}) ::
          SquareUp.Client.response()
  def retrieve(client, params \\ %{}) do
    norm_spec = schema(%{dispute_id: spec(is_binary()), evidence_id: spec(is_binary())})

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      path:
        "/v2/disputes/#{Map.get(params, "dispute_id")}/evidence/#{Map.get(params, "evidence_id")}"
    })
  end

  @spec list(%SquareUp.Client{}, %{dispute_id: binary()}) :: SquareUp.Client.response()
  def list(client, params \\ %{}) do
    norm_spec = schema(%{dispute_id: spec(is_binary())})

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      path: "/v2/disputes/#{Map.get(params, "dispute_id")}/evidence"
    })
  end
end
