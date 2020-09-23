defmodule SquareUp.SubscriptionEvents do
  import SquareUp.Client, only: [call: 2]

  def list(client, params) do
    call(client, %{
      method: :get,
      params: params,
      path: "/v2/subscriptions/#{Map.get(params, "subscription_id")}/events"
    })
  end
end
