defmodule SquareUp.OAUTH2.Token do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec obtain(SquareUp.Client.t(), SquareUp.TypeSpecs.obtain_token_request()) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.obtain_token_response())
  def obtain(client, params \\ %{}) do
    norm_spec = Norm.Delegate.delegate(&SquareUp.NormSchema.obtain_token_request/0)

    response_spec = {:delegate, &SquareUp.ResponseSchema.obtain_token_response/0}

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/oauth2/token"
    })
  end

  @spec revoke(SquareUp.Client.t(), SquareUp.TypeSpecs.revoke_token_request()) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.revoke_token_response())
  def revoke(client, params \\ %{}) do
    norm_spec = Norm.Delegate.delegate(&SquareUp.NormSchema.revoke_token_request/0)

    response_spec = {:delegate, &SquareUp.ResponseSchema.revoke_token_response/0}

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/oauth2/revoke"
    })
  end
end
