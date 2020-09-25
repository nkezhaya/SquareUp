defmodule SquareUp.MOBILE.MobileAuthorizationCode do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec create(%SquareUp.Client{}, SquareUp.Schema.create_mobile_authorization_code_request()) ::
          SquareUp.Client.response()
  def create(client, params \\ %{}) do
    norm_spec =
      Norm.Delegate.delegate(&SquareUp.Schema.create_mobile_authorization_code_request/0)

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      path: "/mobile/authorization-code"
    })
  end
end
