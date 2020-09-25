defmodule SquareUp.V1.EmployeeRoles do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec list(SquareUp.Client.t(), %{order: binary(), limit: integer(), batch_token: binary()}) ::
          SquareUp.Client.response([SquareUp.TypeSpecs.v1_employee_role()])
  def list(client, params \\ %{}) do
    norm_spec =
      schema(%{
        order: spec(is_binary()),
        limit: spec(is_integer()),
        batch_token: spec(is_binary())
      })

    response_spec = [{:delegate, &SquareUp.ResponseSchema.v1_employee_role/0}]

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v1/me/roles"
    })
  end
end
