defmodule SquareUp.Invoices do
  import Norm
  import SquareUp.Client, only: [call: 2]

  def search(client, params) do
    norm_spec = spec(SquareUp.Schema.search_invoices_request())

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      path: "/v2/invoices/search"
    })
  end

  def list(client, params) do
    norm_spec =
      schema(%{
        "location_id" => spec(is_binary()),
        "cursor" => spec(is_binary()),
        "limit" => spec(is_integer())
      })

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      path: "/v2/invoices"
    })
  end
end
