defmodule SquareUp.Customers do
  import Norm
  import SquareUp.Client, only: [call: 2]

  def search(client, params) do
    norm_spec = spec(SquareUp.Schema.search_customers_request())

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      path: "/v2/customers/search"
    })
  end

  def list(client, params) do
    norm_spec =
      schema(%{
        "cursor" => spec(is_binary()),
        "sort_field" => spec(is_binary()),
        "sort_order" => spec(is_binary())
      })

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      path: "/v2/customers"
    })
  end
end
