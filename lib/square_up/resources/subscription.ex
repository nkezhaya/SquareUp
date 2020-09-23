defmodule SquareUp.Subscription do
  import SquareUp.Client, only: [call: 2]

  def retrieve(client, params) do
    call(client, %{
      method: :get,
      params: params,
      path: "/v2/subscriptions/#{Map.get(params, "subscription_id")}"
    })
  end

  def update(client, params) do
    call(client, %{
      method: :put,
      params: params,
      path: "/v2/subscriptions/#{Map.get(params, "subscription_id")}"
    })
  end

  def cancel(client, params) do
    call(client, %{
      method: :post,
      params: params,
      path: "/v2/subscriptions/#{Map.get(params, "subscription_id")}/cancel"
    })
  end

  def create(client, params) do
    call(client, %{
      method: :post,
      params: params,
      path: "/v2/subscriptions"
    })
  end
end
