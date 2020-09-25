defmodule SquareUp.MOBILE.MobileAuthorizationCode do
  import SquareUp.Client, only: [call: 2]

  @spec create(
          SquareUp.Client.t(),
          %{},
          SquareUp.TypeSpecs.create_mobile_authorization_code_request()
        ) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.create_mobile_authorization_code_response())
  def create(client, path_params \\ %{}, params \\ %{}) do
    path_params_spec = schema(%{})

    params_spec =
      Norm.Delegate.delegate(&SquareUp.NormSchema.create_mobile_authorization_code_request/0)

    response_spec =
      {:delegate, &SquareUp.ResponseSchema.create_mobile_authorization_code_response/0}

    call(client, %{
      method: :post,
      path_params: path_params,
      params: params,
      path_params_spec: path_params_spec,
      params_spec: params_spec,
      response_spec: response_spec,
      path: "/mobile/authorization-code"
    })
  end
end
