defmodule SquareUp.V1.Settlement do
  import Norm
  import SquareUp.Client, only: [call: 2]

  def retrieve(client, params \\ %{}) do
    norm_spec =
      schema(%{"location_id" => spec(is_binary()), "settlement_id" => spec(is_binary())})

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      path:
        "/v1/#{Map.get(params, "location_id")}/settlements/#{Map.get(params, "settlement_id")}"
    })
  end
end
