defmodule SquareUp.V2.Domain do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec register(%SquareUp.Client{}, SquareUp.Schema.register_domain_request()) ::
          SquareUp.Client.response()
  def register(client, params \\ %{}) do
    norm_spec = Norm.Delegate.delegate(&SquareUp.Schema.register_domain_request/0)

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      path: "/v2/apple-pay/domains"
    })
  end
end
