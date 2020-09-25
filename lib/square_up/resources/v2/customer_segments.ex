defmodule SquareUp.V2.CustomerSegments do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec list(SquareUp.Client.t(), %{cursor: binary()}) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.list_customer_segments_response())
  def list(client, params \\ %{}) do
    norm_spec = schema(%{cursor: spec(is_binary())})

    response_spec = {:delegate, &SquareUp.ResponseSchema.list_customer_segments_response/0}

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v2/customers/segments"
    })
  end
end
