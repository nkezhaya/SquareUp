defmodule SquareUp.V2.Domain do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec register(SquareUp.Client.t(), SquareUp.TypeSpecs.register_domain_request()) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.register_domain_response())
  def register(client, params \\ %{}) do
    norm_spec = Norm.Delegate.delegate(&SquareUp.NormSchema.register_domain_request/0)

    response_spec = {:delegate, &SquareUp.ResponseSchema.register_domain_response/0}

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v2/apple-pay/domains"
    })
  end
end
