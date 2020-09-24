defmodule SquareUp.V2.Invoice do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec create(%SquareUp.Client{}, SquareUp.Schema.create_invoice_request()) ::
          SquareUp.Client.response()
  def create(client, params \\ %{}) do
    norm_spec = spec(SquareUp.Schema.create_invoice_request())

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      path: "/v2/invoices"
    })
  end

  @spec publish(%SquareUp.Client{}, %{
          invoice_id: binary(),
          body: SquareUp.Schema.publish_invoice_request()
        }) :: SquareUp.Client.response()
  def publish(client, params \\ %{}) do
    norm_spec =
      schema(%{
        invoice_id: spec(is_binary()),
        body: spec(SquareUp.Schema.publish_invoice_request())
      })

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      path: "/v2/invoices/#{Map.get(params, "invoice_id")}/publish"
    })
  end

  @spec delete(%SquareUp.Client{}, %{invoice_id: binary(), version: integer()}) ::
          SquareUp.Client.response()
  def delete(client, params \\ %{}) do
    norm_spec = schema(%{invoice_id: spec(is_binary()), version: spec(is_integer())})

    call(client, %{
      method: :delete,
      params: params,
      spec: norm_spec,
      path: "/v2/invoices/#{Map.get(params, "invoice_id")}"
    })
  end

  @spec get(%SquareUp.Client{}, %{invoice_id: binary()}) :: SquareUp.Client.response()
  def get(client, params \\ %{}) do
    norm_spec = schema(%{invoice_id: spec(is_binary())})

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      path: "/v2/invoices/#{Map.get(params, "invoice_id")}"
    })
  end

  @spec update(%SquareUp.Client{}, %{
          invoice_id: binary(),
          body: SquareUp.Schema.update_invoice_request()
        }) :: SquareUp.Client.response()
  def update(client, params \\ %{}) do
    norm_spec =
      schema(%{
        invoice_id: spec(is_binary()),
        body: spec(SquareUp.Schema.update_invoice_request())
      })

    call(client, %{
      method: :put,
      params: params,
      spec: norm_spec,
      path: "/v2/invoices/#{Map.get(params, "invoice_id")}"
    })
  end

  @spec cancel(%SquareUp.Client{}, %{
          invoice_id: binary(),
          body: SquareUp.Schema.cancel_invoice_request()
        }) :: SquareUp.Client.response()
  def cancel(client, params \\ %{}) do
    norm_spec =
      schema(%{
        invoice_id: spec(is_binary()),
        body: spec(SquareUp.Schema.cancel_invoice_request())
      })

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      path: "/v2/invoices/#{Map.get(params, "invoice_id")}/cancel"
    })
  end
end
