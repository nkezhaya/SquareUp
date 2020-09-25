defmodule SquareUp.V2.Dispute do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec retrieve(SquareUp.Client.t(), %{dispute_id: binary()}) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.retrieve_dispute_response())
  def retrieve(client, params \\ %{}) do
    norm_spec = schema(%{dispute_id: spec(is_binary())})

    response_spec = {:delegate, &SquareUp.ResponseSchema.retrieve_dispute_response/0}

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v2/disputes/#{Map.get(params, "dispute_id")}"
    })
  end

  @spec accept(SquareUp.Client.t(), %{dispute_id: binary()}) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.accept_dispute_response())
  def accept(client, params \\ %{}) do
    norm_spec = schema(%{dispute_id: spec(is_binary())})

    response_spec = {:delegate, &SquareUp.ResponseSchema.accept_dispute_response/0}

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v2/disputes/#{Map.get(params, "dispute_id")}/accept"
    })
  end
end
