defmodule SquareUp.CustomerCard do
  import SquareUp.Client, only: [call: 2]

  def delete(client, params) do
    call(client, %{
      method: :delete,
      params: params,
      path: "/v2/customers/#{Map.get(params, "customer_id")}/cards/#{Map.get(params, "card_id")}"
    })
  end

  def create(client, params) do
    call(client, %{
      method: :post,
      params: params,
      path: "/v2/customers/#{Map.get(params, "customer_id")}/cards"
    })
  end
end
