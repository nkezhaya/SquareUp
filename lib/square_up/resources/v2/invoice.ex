defmodule SquareUp.V2.Invoice do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec create(SquareUp.Client.t(), SquareUp.TypeSpecs.create_invoice_request()) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.create_invoice_response())
  def create(client, params \\ %{}) do
    norm_spec = Norm.Delegate.delegate(&SquareUp.NormSchema.create_invoice_request/0)

    response_spec = {:delegate, &SquareUp.ResponseSchema.create_invoice_response/0}

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v2/invoices"
    })
  end

  @spec publish(SquareUp.Client.t(), %{
          invoice_id: binary(),
          body: SquareUp.TypeSpecs.publish_invoice_request()
        }) :: SquareUp.Client.response(SquareUp.TypeSpecs.publish_invoice_response())
  def publish(client, params \\ %{}) do
    norm_spec =
      schema(%{
        invoice_id: spec(is_binary()),
        body: Norm.Delegate.delegate(&SquareUp.NormSchema.publish_invoice_request/0)
      })

    response_spec = {:delegate, &SquareUp.ResponseSchema.publish_invoice_response/0}

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v2/invoices/#{Map.get(params, "invoice_id")}/publish"
    })
  end

  @spec delete(SquareUp.Client.t(), %{invoice_id: binary(), version: integer()}) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.delete_invoice_response())
  def delete(client, params \\ %{}) do
    norm_spec = schema(%{invoice_id: spec(is_binary()), version: spec(is_integer())})

    response_spec = {:delegate, &SquareUp.ResponseSchema.delete_invoice_response/0}

    call(client, %{
      method: :delete,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v2/invoices/#{Map.get(params, "invoice_id")}"
    })
  end

  @spec get(SquareUp.Client.t(), %{invoice_id: binary()}) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.get_invoice_response())
  def get(client, params \\ %{}) do
    norm_spec = schema(%{invoice_id: spec(is_binary())})

    response_spec = {:delegate, &SquareUp.ResponseSchema.get_invoice_response/0}

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v2/invoices/#{Map.get(params, "invoice_id")}"
    })
  end

  @spec update(SquareUp.Client.t(), %{
          invoice_id: binary(),
          body: SquareUp.TypeSpecs.update_invoice_request()
        }) :: SquareUp.Client.response(SquareUp.TypeSpecs.update_invoice_response())
  def update(client, params \\ %{}) do
    norm_spec =
      schema(%{
        invoice_id: spec(is_binary()),
        body: Norm.Delegate.delegate(&SquareUp.NormSchema.update_invoice_request/0)
      })

    response_spec = {:delegate, &SquareUp.ResponseSchema.update_invoice_response/0}

    call(client, %{
      method: :put,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v2/invoices/#{Map.get(params, "invoice_id")}"
    })
  end

  @spec cancel(SquareUp.Client.t(), %{
          invoice_id: binary(),
          body: SquareUp.TypeSpecs.cancel_invoice_request()
        }) :: SquareUp.Client.response(SquareUp.TypeSpecs.cancel_invoice_response())
  def cancel(client, params \\ %{}) do
    norm_spec =
      schema(%{
        invoice_id: spec(is_binary()),
        body: Norm.Delegate.delegate(&SquareUp.NormSchema.cancel_invoice_request/0)
      })

    response_spec = {:delegate, &SquareUp.ResponseSchema.cancel_invoice_response/0}

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v2/invoices/#{Map.get(params, "invoice_id")}/cancel"
    })
  end
end
