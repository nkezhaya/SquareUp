defmodule SquareUp.DisputeEvidence do
  import SquareUp.Client, only: [call: 2]

  def remove(client, params) do
    call(client, %{
      method: :delete,
      params: params,
      path:
        "/v2/disputes/#{Map.get(params, "dispute_id")}/evidence/#{Map.get(params, "evidence_id")}"
    })
  end

  def retrieve(client, params) do
    call(client, %{
      method: :get,
      params: params,
      path:
        "/v2/disputes/#{Map.get(params, "dispute_id")}/evidence/#{Map.get(params, "evidence_id")}"
    })
  end

  def list(client, params) do
    call(client, %{
      method: :get,
      params: params,
      path: "/v2/disputes/#{Map.get(params, "dispute_id")}/evidence"
    })
  end
end
