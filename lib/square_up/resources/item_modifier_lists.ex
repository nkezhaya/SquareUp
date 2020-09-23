defmodule SquareUp.ItemModifierLists do
  import SquareUp.Client, only: [call: 2]

  def update(client, params) do
    call(client, %{
      method: :post,
      params: params,
      path: "/v2/catalog/update-item-modifier-lists"
    })
  end
end
