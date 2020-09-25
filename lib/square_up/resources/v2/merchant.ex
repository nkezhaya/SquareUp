defmodule SquareUp.V2.Merchant do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec retrieve(SquareUp.Client.t(), %{merchant_id: binary()}) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.retrieve_merchant_response())
  def retrieve(client, params \\ %{}) do
    norm_spec = schema(%{merchant_id: spec(is_binary())})

    response_spec = {:delegate, &SquareUp.ResponseSchema.retrieve_merchant_response/0}

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v2/merchants/#{Map.get(params, "merchant_id")}"
    })
  end
end
