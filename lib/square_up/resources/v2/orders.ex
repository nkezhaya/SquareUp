defmodule SquareUp.V2.Orders do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec search(SquareUp.Client.t(), SquareUp.TypeSpecs.search_orders_request()) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.search_orders_response())
  def search(client, params \\ %{}) do
    norm_spec = Norm.Delegate.delegate(&SquareUp.NormSchema.search_orders_request/0)

    response_spec = {:delegate, &SquareUp.ResponseSchema.search_orders_response/0}

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v2/orders/search"
    })
  end

  @spec batch_retrieve(SquareUp.Client.t(), SquareUp.TypeSpecs.batch_retrieve_orders_request()) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.batch_retrieve_orders_response())
  def batch_retrieve(client, params \\ %{}) do
    norm_spec = Norm.Delegate.delegate(&SquareUp.NormSchema.batch_retrieve_orders_request/0)

    response_spec = {:delegate, &SquareUp.ResponseSchema.batch_retrieve_orders_response/0}

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v2/orders/batch-retrieve"
    })
  end
end
