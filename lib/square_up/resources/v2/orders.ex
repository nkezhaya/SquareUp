defmodule SquareUp.V2.Orders do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec search(%SquareUp.Client{}, SquareUp.Schema.search_orders_request()) ::
          SquareUp.Client.response()
  def search(client, params \\ %{}) do
    norm_spec = spec(SquareUp.Schema.search_orders_request())

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      path: "/v2/orders/search"
    })
  end

  @spec batch_retrieve(%SquareUp.Client{}, SquareUp.Schema.batch_retrieve_orders_request()) ::
          SquareUp.Client.response()
  def batch_retrieve(client, params \\ %{}) do
    norm_spec = spec(SquareUp.Schema.batch_retrieve_orders_request())

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      path: "/v2/orders/batch-retrieve"
    })
  end
end
