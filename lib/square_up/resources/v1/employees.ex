defmodule SquareUp.V1.Employees do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec list(
          SquareUp.Client.t(),
          %{},
          %{
            optional(:order) => binary(),
            optional(:begin_updated_at) => binary(),
            optional(:end_updated_at) => binary(),
            optional(:begin_created_at) => binary(),
            optional(:end_created_at) => binary(),
            optional(:status) => binary(),
            optional(:external_id) => binary(),
            optional(:limit) => integer(),
            optional(:batch_token) => binary()
          },
          %{}
        ) :: SquareUp.Client.response([SquareUp.TypeSpecs.v1_employee()])
  def list(client, path_params \\ %{}, query_params \\ %{}, params \\ %{}) do
    path_params_spec = schema(%{})

    query_params_spec =
      schema(%{
        order: spec(is_binary()),
        begin_updated_at: spec(is_binary()),
        end_updated_at: spec(is_binary()),
        begin_created_at: spec(is_binary()),
        end_created_at: spec(is_binary()),
        status: spec(is_binary()),
        external_id: spec(is_binary()),
        limit: spec(is_integer()),
        batch_token: spec(is_binary())
      })

    params_spec = schema(%{})

    response_spec = [{:delegate, &SquareUp.ResponseSchema.v1_employee/0}]

    call(client, %{
      method: :get,
      path_params: path_params,
      query_params: query_params,
      params: params,
      path_params_spec: path_params_spec,
      query_params_spec: query_params_spec,
      params_spec: params_spec,
      response_spec: response_spec,
      path: "/v1/me/employees"
    })
  end
end
