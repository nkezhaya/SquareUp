defmodule SquareUp.OAUTH2.Token do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec obtain(SquareUp.Client.t(), %{}, %{}, SquareUp.TypeSpecs.obtain_token_request()) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.obtain_token_response())
  def obtain(client, path_params \\ %{}, query_params \\ %{}, params \\ %{}) do
    path_params_spec = schema(%{})
    query_params_spec = schema(%{})
    params_spec = Norm.Delegate.delegate(&SquareUp.NormSchema.obtain_token_request/0)

    response_spec = {:delegate, &SquareUp.ResponseSchema.obtain_token_response/0}

    call(client, %{
      method: :post,
      path_params: path_params,
      query_params: query_params,
      params: params,
      path_params_spec: path_params_spec,
      query_params_spec: query_params_spec,
      params_spec: params_spec,
      response_spec: response_spec,
      path: "/oauth2/token"
    })
  end

  @spec revoke(SquareUp.Client.t(), %{}, %{}, SquareUp.TypeSpecs.revoke_token_request()) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.revoke_token_response())
  def revoke(client, path_params \\ %{}, query_params \\ %{}, params \\ %{}) do
    path_params_spec = schema(%{})
    query_params_spec = schema(%{})
    params_spec = Norm.Delegate.delegate(&SquareUp.NormSchema.revoke_token_request/0)

    response_spec = {:delegate, &SquareUp.ResponseSchema.revoke_token_response/0}

    call(client, %{
      method: :post,
      path_params: path_params,
      query_params: query_params,
      params: params,
      path_params_spec: path_params_spec,
      query_params_spec: query_params_spec,
      params_spec: params_spec,
      response_spec: response_spec,
      path: "/oauth2/revoke"
    })
  end
end
