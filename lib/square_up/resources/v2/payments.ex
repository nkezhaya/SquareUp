defmodule SquareUp.V2.Payments do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec list(%SquareUp.Client{}, %{
          begin_time: binary(),
          end_time: binary(),
          sort_order: binary(),
          cursor: binary(),
          location_id: binary(),
          total: integer(),
          last_4: binary(),
          card_brand: binary()
        }) :: SquareUp.Client.response()
  def list(client, params \\ %{}) do
    norm_spec =
      schema(%{
        begin_time: spec(is_binary()),
        end_time: spec(is_binary()),
        sort_order: spec(is_binary()),
        cursor: spec(is_binary()),
        location_id: spec(is_binary()),
        total: spec(is_integer()),
        last_4: spec(is_binary()),
        card_brand: spec(is_binary())
      })

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      path: "/v2/payments"
    })
  end
end
