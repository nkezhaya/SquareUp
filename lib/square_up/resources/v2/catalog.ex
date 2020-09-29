defmodule SquareUp.V2.Catalog do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec list(SquareUp.Client.t(), %{}, %{
          optional(:cursor) => binary(),
          optional(:types) => binary()
        }) :: SquareUp.Client.response(SquareUp.TypeSpecs.list_catalog_response())
  def list(client, path_params \\ %{}, params \\ %{}) do
    path_params_spec = schema(%{})
    params_spec = schema(%{cursor: spec(is_binary()), types: spec(is_binary())})

    response_spec = {:delegate, &SquareUp.ResponseSchema.list_catalog_response/0}

    call(client, %{
      method: :get,
      path_params: path_params,
      params: params,
      path_params_spec: path_params_spec,
      params_spec: params_spec,
      response_spec: response_spec,
      path: "/v2/catalog/list"
    })
  end
end
