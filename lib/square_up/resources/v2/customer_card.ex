defmodule SquareUp.V2.CustomerCard do
  import Norm
  import SquareUp.Client, only: [call: 2]

  def delete(client, params \\ %{}) do
    norm_spec = schema(%{"customer_id" => spec(is_binary()), "card_id" => spec(is_binary())})

    call(client, %{
      method: :delete,
      params: params,
      spec: norm_spec,
      path: "/v2/customers/#{Map.get(params, "customer_id")}/cards/#{Map.get(params, "card_id")}"
    })
  end

  def create(client, params \\ %{}) do
    norm_spec =
      schema(%{
        "customer_id" => spec(is_binary()),
        "body" => spec(SquareUp.Schema.create_customer_card_request())
      })

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      path: "/v2/customers/#{Map.get(params, "customer_id")}/cards"
    })
  end
end
