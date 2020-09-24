defmodule SquareUp.V1.Settlements do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec list(%SquareUp.Client{}, %{
          location_id: binary(),
          order: binary(),
          begin_time: binary(),
          end_time: binary(),
          limit: integer(),
          status: binary(),
          batch_token: binary()
        }) :: SquareUp.Client.response()
  def list(client, params \\ %{}) do
    norm_spec =
      schema(%{
        location_id: spec(is_binary()),
        order: spec(is_binary()),
        begin_time: spec(is_binary()),
        end_time: spec(is_binary()),
        limit: spec(is_integer()),
        status: spec(is_binary()),
        batch_token: spec(is_binary())
      })

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      path: "/v1/#{Map.get(params, "location_id")}/settlements"
    })
  end
end
