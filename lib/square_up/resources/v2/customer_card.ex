defmodule SquareUp.V2.CustomerCard do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec delete(%SquareUp.Client{}, %{customer_id: binary(), card_id: binary()}) ::
          SquareUp.Client.response()
  def delete(client, params \\ %{}) do
    norm_spec = schema(%{customer_id: spec(is_binary()), card_id: spec(is_binary())})

    call(client, %{
      method: :delete,
      params: params,
      spec: norm_spec,
      path: "/v2/customers/#{Map.get(params, "customer_id")}/cards/#{Map.get(params, "card_id")}"
    })
  end

  @spec create(%SquareUp.Client{}, %{
          customer_id: binary(),
          body: SquareUp.Schema.create_customer_card_request()
        }) :: SquareUp.Client.response()
  def create(client, params \\ %{}) do
    norm_spec =
      schema(%{
        customer_id: spec(is_binary()),
        body: spec(SquareUp.Schema.create_customer_card_request())
      })

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      path: "/v2/customers/#{Map.get(params, "customer_id")}/cards"
    })
  end
end
