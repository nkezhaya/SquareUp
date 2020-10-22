defmodule SquareUp.V1.Payments do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec list(
          SquareUp.Client.t(),
          %{required(:location_id) => binary()},
          %{
            optional(:order) => binary(),
            optional(:begin_time) => binary(),
            optional(:end_time) => binary(),
            optional(:limit) => integer(),
            optional(:batch_token) => binary(),
            optional(:include_partial) => boolean()
          },
          %{}
        ) :: SquareUp.Client.response([SquareUp.TypeSpecs.v1_payment()])
  def list(client, path_params \\ %{}, query_params \\ %{}, params \\ %{}) do
    path_params_spec = schema(%{location_id: spec(is_binary())})

    query_params_spec =
      schema(%{
        order: spec(is_binary()),
        begin_time: spec(is_binary()),
        end_time: spec(is_binary()),
        limit: spec(is_integer()),
        batch_token: spec(is_binary()),
        include_partial: spec(is_boolean())
      })

    params_spec = schema(%{})

    response_spec = [{:delegate, &SquareUp.ResponseSchema.v1_payment/0}]

    call(client, %{
      method: :get,
      path_params: path_params,
      query_params: query_params,
      params: params,
      path_params_spec: path_params_spec,
      query_params_spec: query_params_spec,
      params_spec: params_spec,
      response_spec: response_spec,
      path: "/v1/{location_id}/payments"
    })
  end
end
