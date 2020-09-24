defmodule SquareUp.OAUTH2.Token do
  import Norm
  import SquareUp.Client, only: [call: 2]

  def obtain(client, params) do
    norm_spec = spec(SquareUp.Schema.obtain_token_request())

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      path: "/oauth2/token"
    })
  end

  def revoke(client, params) do
    norm_spec = spec(SquareUp.Schema.revoke_token_request())

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      path: "/oauth2/revoke"
    })
  end
end
