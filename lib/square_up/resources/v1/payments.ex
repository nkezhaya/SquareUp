defmodule SquareUp.V1.Payments do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec list(SquareUp.Client.t(), %{
          location_id: binary(),
          order: binary(),
          begin_time: binary(),
          end_time: binary(),
          limit: integer(),
          batch_token: binary(),
          include_partial: boolean()
        }) :: SquareUp.Client.response([SquareUp.TypeSpecs.v1_payment()])
  def list(client, params \\ %{}) do
    norm_spec =
      schema(%{
        location_id: spec(is_binary()),
        order: spec(is_binary()),
        begin_time: spec(is_binary()),
        end_time: spec(is_binary()),
        limit: spec(is_integer()),
        batch_token: spec(is_binary()),
        include_partial: spec(is_boolean())
      })

    response_spec = [{:delegate, &SquareUp.ResponseSchema.v1_payment/0}]

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v1/#{Map.get(params, "location_id")}/payments"
    })
  end
end
