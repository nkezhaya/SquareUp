defmodule SquareUp.V2.SubscriptionEvents do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec list(SquareUp.Client.t(), %{subscription_id: binary(), cursor: binary(), limit: integer()}) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.list_subscription_events_response())
  def list(client, params \\ %{}) do
    norm_spec =
      schema(%{
        subscription_id: spec(is_binary()),
        cursor: spec(is_binary()),
        limit: spec(is_integer())
      })

    response_spec = {:delegate, &SquareUp.ResponseSchema.list_subscription_events_response/0}

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v2/subscriptions/#{Map.get(params, "subscription_id")}/events"
    })
  end
end
