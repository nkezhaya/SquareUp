defmodule SquareUp.TerminalCheckouts do
  import SquareUp.Client, only: [call: 2]

  def search(client, params) do
    call(client, %{
      method: :post,
      params: params,
      path: "/v2/terminals/checkouts/search"
    })
  end
end
