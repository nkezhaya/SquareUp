defmodule SquareUp.MOBILE.MobileAuthorizationCode do
  import Norm
  import SquareUp.Client, only: [call: 2]

  def create(client, params) do
    norm_spec = spec(SquareUp.Schema.create_mobile_authorization_code_request())

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      path: "/mobile/authorization-code"
    })
  end
end
