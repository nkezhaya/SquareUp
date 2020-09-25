defmodule SquareUp.V2.CustomerCard do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec delete(SquareUp.Client.t(), %{customer_id: binary(), card_id: binary()}) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.delete_customer_card_response())
  def delete(client, params \\ %{}) do
    norm_spec = schema(%{customer_id: spec(is_binary()), card_id: spec(is_binary())})

    response_spec = {:delegate, &SquareUp.ResponseSchema.delete_customer_card_response/0}

    call(client, %{
      method: :delete,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v2/customers/#{Map.get(params, "customer_id")}/cards/#{Map.get(params, "card_id")}"
    })
  end

  @spec create(SquareUp.Client.t(), %{
          customer_id: binary(),
          body: SquareUp.TypeSpecs.create_customer_card_request()
        }) :: SquareUp.Client.response(SquareUp.TypeSpecs.create_customer_card_response())
  def create(client, params \\ %{}) do
    norm_spec =
      schema(%{
        customer_id: spec(is_binary()),
        body: Norm.Delegate.delegate(&SquareUp.NormSchema.create_customer_card_request/0)
      })

    response_spec = {:delegate, &SquareUp.ResponseSchema.create_customer_card_response/0}

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v2/customers/#{Map.get(params, "customer_id")}/cards"
    })
  end
end
