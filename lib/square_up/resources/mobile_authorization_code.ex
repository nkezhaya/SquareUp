defmodule SquareUp.MobileAuthorizationCode do
  import SquareUp.Client, only: [call: 2]

  def create(client, params) do
    call(client, %{
      method: :post,
      params: params,
      path: "/mobile/authorization-code"
    })
  end
end
