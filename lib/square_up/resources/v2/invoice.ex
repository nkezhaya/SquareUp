defmodule SquareUp.V2.Invoice do
  import Norm
  import SquareUp.Client, only: [call: 2]

  def create(client, params \\ %{}) do
    norm_spec = spec(SquareUp.Schema.create_invoice_request())

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      path: "/v2/invoices"
    })
  end

  def publish(client, params \\ %{}) do
    norm_spec =
      schema(%{
        "invoice_id" => spec(is_binary()),
        "body" => spec(SquareUp.Schema.publish_invoice_request())
      })

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      path: "/v2/invoices/#{Map.get(params, "invoice_id")}/publish"
    })
  end

  def delete(client, params \\ %{}) do
    norm_spec = schema(%{"invoice_id" => spec(is_binary()), "version" => spec(is_integer())})

    call(client, %{
      method: :delete,
      params: params,
      spec: norm_spec,
      path: "/v2/invoices/#{Map.get(params, "invoice_id")}"
    })
  end

  def get(client, params \\ %{}) do
    norm_spec = schema(%{"invoice_id" => spec(is_binary())})

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      path: "/v2/invoices/#{Map.get(params, "invoice_id")}"
    })
  end

  def update(client, params \\ %{}) do
    norm_spec =
      schema(%{
        "invoice_id" => spec(is_binary()),
        "body" => spec(SquareUp.Schema.update_invoice_request())
      })

    call(client, %{
      method: :put,
      params: params,
      spec: norm_spec,
      path: "/v2/invoices/#{Map.get(params, "invoice_id")}"
    })
  end

  def cancel(client, params \\ %{}) do
    norm_spec =
      schema(%{
        "invoice_id" => spec(is_binary()),
        "body" => spec(SquareUp.Schema.cancel_invoice_request())
      })

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      path: "/v2/invoices/#{Map.get(params, "invoice_id")}/cancel"
    })
  end
end
