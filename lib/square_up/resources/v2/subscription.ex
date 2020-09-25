defmodule SquareUp.V2.Subscription do
  import Norm
  import SquareUp.Client, only: [call: 2]
  @spec retrieve(%SquareUp.Client{}, %{subscription_id: binary()}) :: SquareUp.Client.response()
  def retrieve(client, params \\ %{}) do
    norm_spec = schema(%{subscription_id: spec(is_binary())})

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      path: "/v2/subscriptions/#{Map.get(params, "subscription_id")}"
    })
  end

  @spec update(%SquareUp.Client{}, %{
          subscription_id: binary(),
          body: SquareUp.Schema.update_subscription_request()
        }) :: SquareUp.Client.response()
  def update(client, params \\ %{}) do
    norm_spec =
      schema(%{
        subscription_id: spec(is_binary()),
        body: Norm.Delegate.delegate(&SquareUp.Schema.update_subscription_request/0)
      })

    call(client, %{
      method: :put,
      params: params,
      spec: norm_spec,
      path: "/v2/subscriptions/#{Map.get(params, "subscription_id")}"
    })
  end

  @spec cancel(%SquareUp.Client{}, %{subscription_id: binary()}) :: SquareUp.Client.response()
  def cancel(client, params \\ %{}) do
    norm_spec = schema(%{subscription_id: spec(is_binary())})

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      path: "/v2/subscriptions/#{Map.get(params, "subscription_id")}/cancel"
    })
  end

  @spec create(%SquareUp.Client{}, SquareUp.Schema.create_subscription_request()) ::
          SquareUp.Client.response()
  def create(client, params \\ %{}) do
    norm_spec = Norm.Delegate.delegate(&SquareUp.Schema.create_subscription_request/0)

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      path: "/v2/subscriptions"
    })
  end
end
