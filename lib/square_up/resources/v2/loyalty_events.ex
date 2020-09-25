defmodule SquareUp.V2.LoyaltyEvents do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec search(SquareUp.Client.t(), SquareUp.TypeSpecs.search_loyalty_events_request()) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.search_loyalty_events_response())
  def search(client, params \\ %{}) do
    norm_spec = Norm.Delegate.delegate(&SquareUp.NormSchema.search_loyalty_events_request/0)

    response_spec = {:delegate, &SquareUp.ResponseSchema.search_loyalty_events_response/0}

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v2/loyalty/events/search"
    })
  end
end
