defmodule SquareUp.MOBILE.MobileAuthorizationCode do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec create(SquareUp.Client.t(), SquareUp.TypeSpecs.create_mobile_authorization_code_request()) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.create_mobile_authorization_code_response())
  def create(client, params \\ %{}) do
    norm_spec =
      Norm.Delegate.delegate(&SquareUp.NormSchema.create_mobile_authorization_code_request/0)

    response_spec =
      {:delegate, &SquareUp.ResponseSchema.create_mobile_authorization_code_response/0}

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/mobile/authorization-code"
    })
  end
end
