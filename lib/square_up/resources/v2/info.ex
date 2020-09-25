defmodule SquareUp.V2.Info do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec catalog(SquareUp.Client.t(), %{}) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.catalog_info_response())
  def catalog(client, params \\ %{}) do
    norm_spec = schema(%{})

    response_spec = {:delegate, &SquareUp.ResponseSchema.catalog_info_response/0}

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v2/catalog/info"
    })
  end
end
