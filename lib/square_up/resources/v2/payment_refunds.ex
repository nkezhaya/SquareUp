defmodule SquareUp.V2.PaymentRefunds do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec list(%SquareUp.Client{}, %{
          begin_time: binary(),
          end_time: binary(),
          sort_order: binary(),
          cursor: binary(),
          location_id: binary(),
          status: binary(),
          source_type: binary()
        }) :: SquareUp.Client.response()
  def list(client, params \\ %{}) do
    norm_spec =
      schema(%{
        begin_time: spec(is_binary()),
        end_time: spec(is_binary()),
        sort_order: spec(is_binary()),
        cursor: spec(is_binary()),
        location_id: spec(is_binary()),
        status: spec(is_binary()),
        source_type: spec(is_binary())
      })

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      path: "/v2/refunds"
    })
  end
end
