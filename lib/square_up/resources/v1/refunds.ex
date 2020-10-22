defmodule SquareUp.V1.Refunds do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec list(SquareUp.Client.t(), %{required(:location_id) => binary()}, %{}, %{
          optional(:order) => binary(),
          optional(:begin_time) => binary(),
          optional(:end_time) => binary(),
          optional(:limit) => integer(),
          optional(:batch_token) => binary()
        }) :: SquareUp.Client.response([SquareUp.TypeSpecs.v1_refund()])
  def list(client, path_params \\ %{}, params \\ %{}, query_params \\ %{}) do
    path_params_spec = schema(%{location_id: spec(is_binary())})
    params_spec = schema(%{})

    query_params_spec =
      schema(%{
        order: spec(is_binary()),
        begin_time: spec(is_binary()),
        end_time: spec(is_binary()),
        limit: spec(is_integer()),
        batch_token: spec(is_binary())
      })

    response_spec = [{:delegate, &SquareUp.ResponseSchema.v1_refund/0}]

    call(client, %{
      method: :get,
      path_params: path_params,
      params: params,
      query_params: query_params,
      path_params_spec: path_params_spec,
      params_spec: params_spec,
      query_params_spec: query_params_spec,
      response_spec: response_spec,
      path: "/v1/{location_id}/refunds"
    })
  end
end
