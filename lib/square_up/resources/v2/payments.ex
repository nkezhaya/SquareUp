defmodule SquareUp.V2.Payments do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec list(SquareUp.Client.t(), %{}, %{}, %{
          optional(:begin_time) => binary(),
          optional(:end_time) => binary(),
          optional(:sort_order) => binary(),
          optional(:cursor) => binary(),
          optional(:location_id) => binary(),
          optional(:total) => integer(),
          optional(:last_4) => binary(),
          optional(:card_brand) => binary()
        }) :: SquareUp.Client.response(SquareUp.TypeSpecs.list_payments_response())
  def list(client, path_params \\ %{}, params \\ %{}, query_params \\ %{}) do
    path_params_spec = schema(%{})
    params_spec = schema(%{})

    query_params_spec =
      schema(%{
        begin_time: spec(is_binary()),
        end_time: spec(is_binary()),
        sort_order: spec(is_binary()),
        cursor: spec(is_binary()),
        location_id: spec(is_binary()),
        total: spec(is_integer()),
        last_4: spec(is_binary()),
        card_brand: spec(is_binary())
      })

    response_spec = {:delegate, &SquareUp.ResponseSchema.list_payments_response/0}

    call(client, %{
      method: :get,
      path_params: path_params,
      params: params,
      query_params: query_params,
      path_params_spec: path_params_spec,
      params_spec: params_spec,
      query_params_spec: query_params_spec,
      response_spec: response_spec,
      path: "/v2/payments"
    })
  end
end
