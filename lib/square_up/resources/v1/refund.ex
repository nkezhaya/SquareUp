defmodule SquareUp.V1.Refund do
  import Norm
  import SquareUp.Client, only: [call: 2]

  def create(client, params \\ %{}) do
    norm_spec =
      schema(%{
        "location_id" => spec(is_binary()),
        "body" => spec(SquareUp.Schema.v1_create_refund_request())
      })

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      path: "/v1/#{Map.get(params, "location_id")}/refunds"
    })
  end
end
