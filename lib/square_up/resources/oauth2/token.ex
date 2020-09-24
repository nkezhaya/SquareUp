defmodule SquareUp.OAUTH2.Token do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec obtain(%SquareUp.Client{}, SquareUp.Schema.obtain_token_request()) ::
          SquareUp.Client.response()
  def obtain(client, params \\ %{}) do
    norm_spec = spec(SquareUp.Schema.obtain_token_request())

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      path: "/oauth2/token"
    })
  end

  @spec revoke(%SquareUp.Client{}, SquareUp.Schema.revoke_token_request()) ::
          SquareUp.Client.response()
  def revoke(client, params \\ %{}) do
    norm_spec = spec(SquareUp.Schema.revoke_token_request())

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      path: "/oauth2/revoke"
    })
  end
end
