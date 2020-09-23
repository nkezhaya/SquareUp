defmodule SquareUp.Payment do
  import SquareUp.Client, only: [call: 2]

  def refund(client, params) do
    call(client, %{
      method: :post,
      params: params,
      path: "/v2/refunds"
    })
  end

  def cancel_by_idempotency_key(client, params) do
    call(client, %{
      method: :post,
      params: params,
      path: "/v2/payments/cancel"
    })
  end

  def complete(client, params) do
    call(client, %{
      method: :post,
      params: params,
      path: "/v2/payments/#{Map.get(params, "payment_id")}/complete"
    })
  end

  def get(client, params) do
    call(client, %{
      method: :get,
      params: params,
      path: "/v2/payments/#{Map.get(params, "payment_id")}"
    })
  end

  def cancel(client, params) do
    call(client, %{
      method: :post,
      params: params,
      path: "/v2/payments/#{Map.get(params, "payment_id")}/cancel"
    })
  end

  def create(client, params) do
    call(client, %{
      method: :post,
      params: params,
      path: "/v2/payments"
    })
  end
end
