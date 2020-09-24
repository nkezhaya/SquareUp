defmodule SquareUp.V2.Subscription do
  import Norm
  import SquareUp.Client, only: [call: 2]

  def retrieve(client, params \\ %{}) do
    norm_spec = schema(%{"subscription_id" => spec(is_binary())})

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      path: "/v2/subscriptions/#{Map.get(params, "subscription_id")}"
    })
  end

  def update(client, params \\ %{}) do
    norm_spec =
      schema(%{
        "subscription_id" => spec(is_binary()),
        "body" => spec(SquareUp.Schema.update_subscription_request())
      })

    call(client, %{
      method: :put,
      params: params,
      spec: norm_spec,
      path: "/v2/subscriptions/#{Map.get(params, "subscription_id")}"
    })
  end

  def cancel(client, params \\ %{}) do
    norm_spec = schema(%{"subscription_id" => spec(is_binary())})

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      path: "/v2/subscriptions/#{Map.get(params, "subscription_id")}/cancel"
    })
  end

  def create(client, params \\ %{}) do
    norm_spec = spec(SquareUp.Schema.create_subscription_request())

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      path: "/v2/subscriptions"
    })
  end
end
