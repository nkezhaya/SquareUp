defmodule SquareUp.V1.Payments do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec list(%SquareUp.Client{}, %{
          location_id: binary(),
          order: binary(),
          begin_time: binary(),
          end_time: binary(),
          limit: integer(),
          batch_token: binary(),
          include_partial: boolean()
        }) :: SquareUp.Client.response()
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

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      path: "/v1/#{Map.get(params, "location_id")}/payments"
    })
  end
end
