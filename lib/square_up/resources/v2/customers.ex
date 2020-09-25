defmodule SquareUp.V2.Customers do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec search(SquareUp.Client.t(), SquareUp.TypeSpecs.search_customers_request()) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.search_customers_response())
  def search(client, params \\ %{}) do
    norm_spec = Norm.Delegate.delegate(&SquareUp.NormSchema.search_customers_request/0)

    response_spec = {:delegate, &SquareUp.ResponseSchema.search_customers_response/0}

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v2/customers/search"
    })
  end

  @spec list(SquareUp.Client.t(), %{cursor: binary(), sort_field: binary(), sort_order: binary()}) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.list_customers_response())
  def list(client, params \\ %{}) do
    norm_spec =
      schema(%{
        cursor: spec(is_binary()),
        sort_field: spec(is_binary()),
        sort_order: spec(is_binary())
      })

    response_spec = {:delegate, &SquareUp.ResponseSchema.list_customers_response/0}

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v2/customers"
    })
  end
end
