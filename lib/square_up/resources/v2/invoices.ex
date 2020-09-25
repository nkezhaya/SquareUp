defmodule SquareUp.V2.Invoices do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec search(%SquareUp.Client{}, SquareUp.Schema.search_invoices_request()) ::
          SquareUp.Client.response()
  def search(client, params \\ %{}) do
    norm_spec = Norm.Delegate.delegate(&SquareUp.Schema.search_invoices_request/0)

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      path: "/v2/invoices/search"
    })
  end

  @spec list(%SquareUp.Client{}, %{location_id: binary(), cursor: binary(), limit: integer()}) ::
          SquareUp.Client.response()
  def list(client, params \\ %{}) do
    norm_spec =
      schema(%{
        location_id: spec(is_binary()),
        cursor: spec(is_binary()),
        limit: spec(is_integer())
      })

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      path: "/v2/invoices"
    })
  end
end
