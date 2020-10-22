defmodule SquareUp.V2.Merchants do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec list(SquareUp.Client.t(), %{}, %{optional(:cursor) => integer()}, %{}) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.list_merchants_response())
  def list(client, path_params \\ %{}, query_params \\ %{}, params \\ %{}) do
    path_params_spec = schema(%{})
    query_params_spec = schema(%{cursor: spec(is_integer())})
    params_spec = schema(%{})

    response_spec = {:delegate, &SquareUp.ResponseSchema.list_merchants_response/0}

    call(client, %{
      method: :get,
      path_params: path_params,
      query_params: query_params,
      params: params,
      path_params_spec: path_params_spec,
      query_params_spec: query_params_spec,
      params_spec: params_spec,
      response_spec: response_spec,
      path: "/v2/merchants"
    })
  end
end
