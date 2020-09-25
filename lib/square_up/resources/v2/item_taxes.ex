defmodule SquareUp.V2.ItemTaxes do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec update(SquareUp.Client.t(), SquareUp.TypeSpecs.update_item_taxes_request()) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.update_item_taxes_response())
  def update(client, params \\ %{}) do
    norm_spec = Norm.Delegate.delegate(&SquareUp.NormSchema.update_item_taxes_request/0)

    response_spec = {:delegate, &SquareUp.ResponseSchema.update_item_taxes_response/0}

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v2/catalog/update-item-taxes"
    })
  end
end
