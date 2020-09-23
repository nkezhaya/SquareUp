defmodule SquareUp.Domain do
  import SquareUp.Client, only: [call: 2]

  def register(client, params) do
    call(client, %{
      method: :post,
      params: params,
      path: "/v2/apple-pay/domains"
    })
  end
end
