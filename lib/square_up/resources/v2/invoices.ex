defmodule SquareUp.V2.Invoices do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec search(SquareUp.Client.t(), SquareUp.TypeSpecs.search_invoices_request()) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.search_invoices_response())
  def search(client, params \\ %{}) do
    norm_spec = Norm.Delegate.delegate(&SquareUp.NormSchema.search_invoices_request/0)

    response_spec = {:delegate, &SquareUp.ResponseSchema.search_invoices_response/0}

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v2/invoices/search"
    })
  end

  @spec list(SquareUp.Client.t(), %{location_id: binary(), cursor: binary(), limit: integer()}) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.list_invoices_response())
  def list(client, params \\ %{}) do
    norm_spec =
      schema(%{
        location_id: spec(is_binary()),
        cursor: spec(is_binary()),
        limit: spec(is_integer())
      })

    response_spec = {:delegate, &SquareUp.ResponseSchema.list_invoices_response/0}

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v2/invoices"
    })
  end
end
