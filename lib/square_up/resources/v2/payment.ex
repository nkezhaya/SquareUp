defmodule SquareUp.V2.Payment do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec refund(SquareUp.Client.t(), SquareUp.TypeSpecs.refund_payment_request()) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.refund_payment_response())
  def refund(client, params \\ %{}) do
    norm_spec = Norm.Delegate.delegate(&SquareUp.NormSchema.refund_payment_request/0)

    response_spec = {:delegate, &SquareUp.ResponseSchema.refund_payment_response/0}

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v2/refunds"
    })
  end

  @spec cancel_by_idempotency_key(
          SquareUp.Client.t(),
          SquareUp.TypeSpecs.cancel_payment_by_idempotency_key_request()
        ) ::
          SquareUp.Client.response(
            SquareUp.TypeSpecs.cancel_payment_by_idempotency_key_response()
          )
  def cancel_by_idempotency_key(client, params \\ %{}) do
    norm_spec =
      Norm.Delegate.delegate(&SquareUp.NormSchema.cancel_payment_by_idempotency_key_request/0)

    response_spec =
      {:delegate, &SquareUp.ResponseSchema.cancel_payment_by_idempotency_key_response/0}

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v2/payments/cancel"
    })
  end

  @spec complete(SquareUp.Client.t(), %{payment_id: binary()}) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.complete_payment_response())
  def complete(client, params \\ %{}) do
    norm_spec = schema(%{payment_id: spec(is_binary())})

    response_spec = {:delegate, &SquareUp.ResponseSchema.complete_payment_response/0}

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v2/payments/#{Map.get(params, "payment_id")}/complete"
    })
  end

  @spec get(SquareUp.Client.t(), %{payment_id: binary()}) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.get_payment_response())
  def get(client, params \\ %{}) do
    norm_spec = schema(%{payment_id: spec(is_binary())})

    response_spec = {:delegate, &SquareUp.ResponseSchema.get_payment_response/0}

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v2/payments/#{Map.get(params, "payment_id")}"
    })
  end

  @spec cancel(SquareUp.Client.t(), %{payment_id: binary()}) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.cancel_payment_response())
  def cancel(client, params \\ %{}) do
    norm_spec = schema(%{payment_id: spec(is_binary())})

    response_spec = {:delegate, &SquareUp.ResponseSchema.cancel_payment_response/0}

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v2/payments/#{Map.get(params, "payment_id")}/cancel"
    })
  end

  @spec create(SquareUp.Client.t(), SquareUp.TypeSpecs.create_payment_request()) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.create_payment_response())
  def create(client, params \\ %{}) do
    norm_spec = Norm.Delegate.delegate(&SquareUp.NormSchema.create_payment_request/0)

    response_spec = {:delegate, &SquareUp.ResponseSchema.create_payment_response/0}

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v2/payments"
    })
  end
end
