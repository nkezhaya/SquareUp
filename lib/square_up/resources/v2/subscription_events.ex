defmodule SquareUp.V2.SubscriptionEvents do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec list(
          SquareUp.Client.t(),
          %{required(:subscription_id) => binary()},
          %{optional(:cursor) => binary(), optional(:limit) => integer()},
          %{}
        ) :: SquareUp.Client.response(SquareUp.TypeSpecs.list_subscription_events_response())
  def list(client, path_params \\ %{}, query_params \\ %{}, params \\ %{}) do
    path_params_spec = schema(%{subscription_id: spec(is_binary())})
    query_params_spec = schema(%{cursor: spec(is_binary()), limit: spec(is_integer())})
    params_spec = schema(%{})

    response_spec = {:delegate, &SquareUp.ResponseSchema.list_subscription_events_response/0}

    call(client, %{
      method: :get,
      path_params: path_params,
      query_params: query_params,
      params: params,
      path_params_spec: path_params_spec,
      query_params_spec: query_params_spec,
      params_spec: params_spec,
      response_spec: response_spec,
      path: "/v2/subscriptions/{subscription_id}/events"
    })
  end
end
