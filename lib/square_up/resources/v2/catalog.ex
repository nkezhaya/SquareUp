defmodule SquareUp.V2.Catalog do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec list(SquareUp.Client.t(), %{cursor: binary(), types: binary()}) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.list_catalog_response())
  def list(client, params \\ %{}) do
    norm_spec = schema(%{cursor: spec(is_binary()), types: spec(is_binary())})

    response_spec = {:delegate, &SquareUp.ResponseSchema.list_catalog_response/0}

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v2/catalog/list"
    })
  end
end
