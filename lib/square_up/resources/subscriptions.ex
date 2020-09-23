defmodule SquareUp.Subscriptions do
  import SquareUp.Client, only: [call: 2]

  def search(client, params) do
    call(client, %{
      method: :post,
      params: params,
      path: "/v2/subscriptions/search"
    })
  end
end
