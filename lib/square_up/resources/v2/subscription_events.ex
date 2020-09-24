defmodule SquareUp.V2.SubscriptionEvents do
  import Norm
  import SquareUp.Client, only: [call: 2]

  def list(client, params) do
    norm_spec =
      schema(%{
        "subscription_id" => spec(is_binary()),
        "cursor" => spec(is_binary()),
        "limit" => spec(is_integer())
      })

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      path: "/v2/subscriptions/#{Map.get(params, "subscription_id")}/events"
    })
  end
end
