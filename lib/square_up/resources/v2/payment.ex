defmodule SquareUp.V2.Payment do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec refund(%SquareUp.Client{}, SquareUp.Schema.refund_payment_request()) ::
          SquareUp.Client.response()
  def refund(client, params \\ %{}) do
    norm_spec = Norm.Delegate.delegate(&SquareUp.Schema.refund_payment_request/0)

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      path: "/v2/refunds"
    })
  end

  @spec cancel_by_idempotency_key(
          %SquareUp.Client{},
          SquareUp.Schema.cancel_payment_by_idempotency_key_request()
        ) :: SquareUp.Client.response()
  def cancel_by_idempotency_key(client, params \\ %{}) do
    norm_spec =
      Norm.Delegate.delegate(&SquareUp.Schema.cancel_payment_by_idempotency_key_request/0)

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      path: "/v2/payments/cancel"
    })
  end

  @spec complete(%SquareUp.Client{}, %{payment_id: binary()}) :: SquareUp.Client.response()
  def complete(client, params \\ %{}) do
    norm_spec = schema(%{payment_id: spec(is_binary())})

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      path: "/v2/payments/#{Map.get(params, "payment_id")}/complete"
    })
  end

  @spec get(%SquareUp.Client{}, %{payment_id: binary()}) :: SquareUp.Client.response()
  def get(client, params \\ %{}) do
    norm_spec = schema(%{payment_id: spec(is_binary())})

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      path: "/v2/payments/#{Map.get(params, "payment_id")}"
    })
  end

  @spec cancel(%SquareUp.Client{}, %{payment_id: binary()}) :: SquareUp.Client.response()
  def cancel(client, params \\ %{}) do
    norm_spec = schema(%{payment_id: spec(is_binary())})

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      path: "/v2/payments/#{Map.get(params, "payment_id")}/cancel"
    })
  end

  @spec create(%SquareUp.Client{}, SquareUp.Schema.create_payment_request()) ::
          SquareUp.Client.response()
  def create(client, params \\ %{}) do
    norm_spec = Norm.Delegate.delegate(&SquareUp.Schema.create_payment_request/0)

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      path: "/v2/payments"
    })
  end
end
