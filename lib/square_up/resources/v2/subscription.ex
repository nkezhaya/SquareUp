defmodule SquareUp.V2.Subscription do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec retrieve(SquareUp.Client.t(), %{subscription_id: binary()}) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.retrieve_subscription_response())
  def retrieve(client, params \\ %{}) do
    norm_spec = schema(%{subscription_id: spec(is_binary())})

    response_spec = {:delegate, &SquareUp.ResponseSchema.retrieve_subscription_response/0}

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v2/subscriptions/#{Map.get(params, "subscription_id")}"
    })
  end

  @spec update(SquareUp.Client.t(), %{
          subscription_id: binary(),
          body: SquareUp.TypeSpecs.update_subscription_request()
        }) :: SquareUp.Client.response(SquareUp.TypeSpecs.update_subscription_response())
  def update(client, params \\ %{}) do
    norm_spec =
      schema(%{
        subscription_id: spec(is_binary()),
        body: Norm.Delegate.delegate(&SquareUp.NormSchema.update_subscription_request/0)
      })

    response_spec = {:delegate, &SquareUp.ResponseSchema.update_subscription_response/0}

    call(client, %{
      method: :put,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v2/subscriptions/#{Map.get(params, "subscription_id")}"
    })
  end

  @spec cancel(SquareUp.Client.t(), %{subscription_id: binary()}) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.cancel_subscription_response())
  def cancel(client, params \\ %{}) do
    norm_spec = schema(%{subscription_id: spec(is_binary())})

    response_spec = {:delegate, &SquareUp.ResponseSchema.cancel_subscription_response/0}

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v2/subscriptions/#{Map.get(params, "subscription_id")}/cancel"
    })
  end

  @spec create(SquareUp.Client.t(), SquareUp.TypeSpecs.create_subscription_request()) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.create_subscription_response())
  def create(client, params \\ %{}) do
    norm_spec = Norm.Delegate.delegate(&SquareUp.NormSchema.create_subscription_request/0)

    response_spec = {:delegate, &SquareUp.ResponseSchema.create_subscription_response/0}

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v2/subscriptions"
    })
  end
end
