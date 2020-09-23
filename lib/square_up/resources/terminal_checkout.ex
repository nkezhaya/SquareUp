defmodule SquareUp.TerminalCheckout do
  import SquareUp.Client, only: [call: 2]

  def create(client, params) do
    call(client, %{
      method: :post,
      params: params,
      path: "/v2/terminals/checkouts"
    })
  end

  def get(client, params) do
    call(client, %{
      method: :get,
      params: params,
      path: "/v2/terminals/checkouts/#{Map.get(params, "checkout_id")}"
    })
  end

  def cancel(client, params) do
    call(client, %{
      method: :post,
      params: params,
      path: "/v2/terminals/checkouts/#{Map.get(params, "checkout_id")}/cancel"
    })
  end
end
