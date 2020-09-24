defmodule SquareUp.LoyaltyEvents do
  import Norm
  import SquareUp.Client, only: [call: 2]

  def search(client, params) do
    norm_spec = spec(SquareUp.Schema.search_loyalty_events_request())

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      path: "/v2/loyalty/events/search"
    })
  end
end
