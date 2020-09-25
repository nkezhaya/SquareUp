defmodule SquareUp.V2.CustomerSegment do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec retrieve(SquareUp.Client.t(), %{segment_id: binary()}) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.retrieve_customer_segment_response())
  def retrieve(client, params \\ %{}) do
    norm_spec = schema(%{segment_id: spec(is_binary())})

    response_spec = {:delegate, &SquareUp.ResponseSchema.retrieve_customer_segment_response/0}

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v2/customers/segments/#{Map.get(params, "segment_id")}"
    })
  end
end
