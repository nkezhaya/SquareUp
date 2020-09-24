defmodule SquareUp.DisputeEvidence do
  import Norm
  import SquareUp.Client, only: [call: 2]

  def remove(client, params) do
    norm_spec = schema(%{"dispute_id" => spec(is_binary()), "evidence_id" => spec(is_binary())})

    call(client, %{
      method: :delete,
      params: params,
      spec: norm_spec,
      path:
        "/v2/disputes/#{Map.get(params, "dispute_id")}/evidence/#{Map.get(params, "evidence_id")}"
    })
  end

  def retrieve(client, params) do
    norm_spec = schema(%{"dispute_id" => spec(is_binary()), "evidence_id" => spec(is_binary())})

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      path:
        "/v2/disputes/#{Map.get(params, "dispute_id")}/evidence/#{Map.get(params, "evidence_id")}"
    })
  end

  def list(client, params) do
    norm_spec = schema(%{"dispute_id" => spec(is_binary())})

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      path: "/v2/disputes/#{Map.get(params, "dispute_id")}/evidence"
    })
  end
end
