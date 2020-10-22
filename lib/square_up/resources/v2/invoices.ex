defmodule SquareUp.V2.Invoices do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec search(SquareUp.Client.t(), %{}, %{}, SquareUp.TypeSpecs.search_invoices_request()) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.search_invoices_response())
  def search(client, path_params \\ %{}, query_params \\ %{}, params \\ %{}) do
    path_params_spec = schema(%{})
    query_params_spec = schema(%{})
    params_spec = Norm.Delegate.delegate(&SquareUp.NormSchema.search_invoices_request/0)

    response_spec = {:delegate, &SquareUp.ResponseSchema.search_invoices_response/0}

    call(client, %{
      method: :post,
      path_params: path_params,
      query_params: query_params,
      params: params,
      path_params_spec: path_params_spec,
      query_params_spec: query_params_spec,
      params_spec: params_spec,
      response_spec: response_spec,
      path: "/v2/invoices/search"
    })
  end

  @spec list(
          SquareUp.Client.t(),
          %{},
          %{
            required(:location_id) => binary(),
            optional(:cursor) => binary(),
            optional(:limit) => integer()
          },
          %{}
        ) :: SquareUp.Client.response(SquareUp.TypeSpecs.list_invoices_response())
  def list(client, path_params \\ %{}, query_params \\ %{}, params \\ %{}) do
    path_params_spec = schema(%{})

    query_params_spec =
      schema(%{
        location_id: spec(is_binary()),
        cursor: spec(is_binary()),
        limit: spec(is_integer())
      })

    params_spec = schema(%{})

    response_spec = {:delegate, &SquareUp.ResponseSchema.list_invoices_response/0}

    call(client, %{
      method: :get,
      path_params: path_params,
      query_params: query_params,
      params: params,
      path_params_spec: path_params_spec,
      query_params_spec: query_params_spec,
      params_spec: params_spec,
      response_spec: response_spec,
      path: "/v2/invoices"
    })
  end
end
