defmodule SquareUp.Payment do
  import Norm
  import SquareUp.Client, only: [call: 2]

  def refund(client, params) do
    norm_spec = spec(SquareUp.Schema.refund_payment_request())

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      path: "/v2/refunds"
    })
  end

  def cancel_by_idempotency_key(client, params) do
    norm_spec = spec(SquareUp.Schema.cancel_payment_by_idempotency_key_request())

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      path: "/v2/payments/cancel"
    })
  end

  def complete(client, params) do
    norm_spec = schema(%{"payment_id" => spec(is_binary())})

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      path: "/v2/payments/#{Map.get(params, "payment_id")}/complete"
    })
  end

  def get(client, params) do
    norm_spec = schema(%{"payment_id" => spec(is_binary())})

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      path: "/v2/payments/#{Map.get(params, "payment_id")}"
    })
  end

  def cancel(client, params) do
    norm_spec = schema(%{"payment_id" => spec(is_binary())})

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      path: "/v2/payments/#{Map.get(params, "payment_id")}/cancel"
    })
  end

  def create(client, params) do
    norm_spec = spec(SquareUp.Schema.create_payment_request())

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      path: "/v2/payments"
    })
  end
end
