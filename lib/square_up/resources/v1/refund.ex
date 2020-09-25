defmodule SquareUp.V1.Refund do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec create(SquareUp.Client.t(), %{
          location_id: binary(),
          body: SquareUp.TypeSpecs.v1_create_refund_request()
        }) :: SquareUp.Client.response(SquareUp.TypeSpecs.v1_refund())
  def create(client, params \\ %{}) do
    norm_spec =
      schema(%{
        location_id: spec(is_binary()),
        body: Norm.Delegate.delegate(&SquareUp.NormSchema.v1_create_refund_request/0)
      })

    response_spec = {:delegate, &SquareUp.ResponseSchema.v1_refund/0}

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v1/#{Map.get(params, "location_id")}/refunds"
    })
  end
end
