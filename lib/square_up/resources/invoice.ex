defmodule SquareUp.Invoice do
  import SquareUp.Client, only: [call: 2]

  def create(client, params) do
    call(client, %{
      method: :post,
      params: params,
      path: "/v2/invoices"
    })
  end

  def publish(client, params) do
    call(client, %{
      method: :post,
      params: params,
      path: "/v2/invoices/#{Map.get(params, "invoice_id")}/publish"
    })
  end

  def delete(client, params) do
    call(client, %{
      method: :delete,
      params: params,
      path: "/v2/invoices/#{Map.get(params, "invoice_id")}"
    })
  end

  def get(client, params) do
    call(client, %{
      method: :get,
      params: params,
      path: "/v2/invoices/#{Map.get(params, "invoice_id")}"
    })
  end

  def update(client, params) do
    call(client, %{
      method: :put,
      params: params,
      path: "/v2/invoices/#{Map.get(params, "invoice_id")}"
    })
  end

  def cancel(client, params) do
    call(client, %{
      method: :post,
      params: params,
      path: "/v2/invoices/#{Map.get(params, "invoice_id")}/cancel"
    })
  end
end
