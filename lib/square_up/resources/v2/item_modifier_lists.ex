defmodule SquareUp.V2.ItemModifierLists do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec update(%SquareUp.Client{}, SquareUp.Schema.update_item_modifier_lists_request()) ::
          SquareUp.Client.response()
  def update(client, params \\ %{}) do
    norm_spec = Norm.Delegate.delegate(&SquareUp.Schema.update_item_modifier_lists_request/0)

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      path: "/v2/catalog/update-item-modifier-lists"
    })
  end
end
