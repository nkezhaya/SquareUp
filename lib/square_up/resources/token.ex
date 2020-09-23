defmodule SquareUp.Token do
  import SquareUp.Client, only: [call: 2]

  def obtain(client, params) do
    call(client, %{
      method: :post,
      params: params,
      path: "/oauth2/token"
    })
  end

  def revoke(client, params) do
    call(client, %{
      method: :post,
      params: params,
      path: "/oauth2/revoke"
    })
  end
end
