defmodule SquareUp.V2.CustomerSegment do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec retrieve(SquareUp.Client.t(), %{required(:segment_id) => binary()}, %{}, %{}) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.retrieve_customer_segment_response())
  def retrieve(client, path_params \\ %{}, params \\ %{}, query_params \\ %{}) do
    path_params_spec = schema(%{segment_id: spec(is_binary())})
    params_spec = schema(%{})
    query_params_spec = schema(%{})

    response_spec = {:delegate, &SquareUp.ResponseSchema.retrieve_customer_segment_response/0}

    call(client, %{
      method: :get,
      path_params: path_params,
      params: params,
      query_params: query_params,
      path_params_spec: path_params_spec,
      params_spec: params_spec,
      query_params_spec: query_params_spec,
      response_spec: response_spec,
      path: "/v2/customers/segments/{segment_id}"
    })
  end
end
