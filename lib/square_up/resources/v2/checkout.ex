defmodule SquareUp.V2.Checkout do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec create(SquareUp.Client.t(), %{
          location_id: binary(),
          body: SquareUp.TypeSpecs.create_checkout_request()
        }) :: SquareUp.Client.response(SquareUp.TypeSpecs.create_checkout_response())
  def create(client, params \\ %{}) do
    norm_spec =
      schema(%{
        location_id: spec(is_binary()),
        body: Norm.Delegate.delegate(&SquareUp.NormSchema.create_checkout_request/0)
      })

    response_spec = {:delegate, &SquareUp.ResponseSchema.create_checkout_response/0}

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v2/locations/#{Map.get(params, "location_id")}/checkouts"
    })
  end
end
