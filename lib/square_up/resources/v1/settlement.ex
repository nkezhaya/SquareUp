defmodule SquareUp.V1.Settlement do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec retrieve(SquareUp.Client.t(), %{location_id: binary(), settlement_id: binary()}) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.v1_settlement())
  def retrieve(client, params \\ %{}) do
    norm_spec = schema(%{location_id: spec(is_binary()), settlement_id: spec(is_binary())})

    response_spec = {:delegate, &SquareUp.ResponseSchema.v1_settlement/0}

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path:
        "/v1/#{Map.get(params, "location_id")}/settlements/#{Map.get(params, "settlement_id")}"
    })
  end
end
