defmodule SquareUp.V2.Customers do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec search(%SquareUp.Client{}, SquareUp.Schema.search_customers_request()) ::
          SquareUp.Client.response()
  def search(client, params \\ %{}) do
    norm_spec = Norm.Delegate.delegate(&SquareUp.Schema.search_customers_request/0)

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      path: "/v2/customers/search"
    })
  end

  @spec list(%SquareUp.Client{}, %{cursor: binary(), sort_field: binary(), sort_order: binary()}) ::
          SquareUp.Client.response()
  def list(client, params \\ %{}) do
    norm_spec =
      schema(%{
        cursor: spec(is_binary()),
        sort_field: spec(is_binary()),
        sort_order: spec(is_binary())
      })

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      path: "/v2/customers"
    })
  end
end
