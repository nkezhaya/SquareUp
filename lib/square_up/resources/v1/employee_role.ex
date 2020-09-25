defmodule SquareUp.V1.EmployeeRole do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec retrieve(SquareUp.Client.t(), %{role_id: binary()}, %{}) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.v1_employee_role())
  def retrieve(client, path_params \\ %{}, params \\ %{}) do
    path_params_spec = schema(%{role_id: spec(is_binary())})
    params_spec = schema(%{})

    response_spec = {:delegate, &SquareUp.ResponseSchema.v1_employee_role/0}

    call(client, %{
      method: :get,
      path_params: path_params,
      params: params,
      path_params_spec: path_params_spec,
      params_spec: params_spec,
      response_spec: response_spec,
      path: "/v1/me/roles/{role_id}"
    })
  end

  @spec update(SquareUp.Client.t(), %{role_id: binary()}, SquareUp.TypeSpecs.v1_employee_role()) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.v1_employee_role())
  def update(client, path_params \\ %{}, params \\ %{}) do
    path_params_spec = schema(%{role_id: spec(is_binary())})
    params_spec = Norm.Delegate.delegate(&SquareUp.NormSchema.v1_employee_role/0)

    response_spec = {:delegate, &SquareUp.ResponseSchema.v1_employee_role/0}

    call(client, %{
      method: :put,
      path_params: path_params,
      params: params,
      path_params_spec: path_params_spec,
      params_spec: params_spec,
      response_spec: response_spec,
      path: "/v1/me/roles/{role_id}"
    })
  end

  @spec create(SquareUp.Client.t(), %{}, %{employee_role: SquareUp.TypeSpecs.v1_employee_role()}) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.v1_employee_role())
  def create(client, path_params \\ %{}, params \\ %{}) do
    path_params_spec = schema(%{})

    params_spec =
      schema(%{employee_role: Norm.Delegate.delegate(&SquareUp.NormSchema.v1_employee_role/0)})

    response_spec = {:delegate, &SquareUp.ResponseSchema.v1_employee_role/0}

    call(client, %{
      method: :post,
      path_params: path_params,
      params: params,
      path_params_spec: path_params_spec,
      params_spec: params_spec,
      response_spec: response_spec,
      path: "/v1/me/roles"
    })
  end
end
