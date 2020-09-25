defmodule SquareUp.V1.Employee do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec retrieve(SquareUp.Client.t(), %{employee_id: binary()}, %{}) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.v1_employee())
  def retrieve(client, path_params \\ %{}, params \\ %{}) do
    path_params_spec = schema(%{employee_id: spec(is_binary())})
    params_spec = schema(%{})

    response_spec = {:delegate, &SquareUp.ResponseSchema.v1_employee/0}

    call(client, %{
      method: :get,
      path_params: path_params,
      params: params,
      path_params_spec: path_params_spec,
      params_spec: params_spec,
      response_spec: response_spec,
      path: "/v1/me/employees/{employee_id}"
    })
  end

  @spec update(SquareUp.Client.t(), %{employee_id: binary()}, SquareUp.TypeSpecs.v1_employee()) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.v1_employee())
  def update(client, path_params \\ %{}, params \\ %{}) do
    path_params_spec = schema(%{employee_id: spec(is_binary())})
    params_spec = Norm.Delegate.delegate(&SquareUp.NormSchema.v1_employee/0)

    response_spec = {:delegate, &SquareUp.ResponseSchema.v1_employee/0}

    call(client, %{
      method: :put,
      path_params: path_params,
      params: params,
      path_params_spec: path_params_spec,
      params_spec: params_spec,
      response_spec: response_spec,
      path: "/v1/me/employees/{employee_id}"
    })
  end

  @spec create(SquareUp.Client.t(), %{}, SquareUp.TypeSpecs.v1_employee()) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.v1_employee())
  def create(client, path_params \\ %{}, params \\ %{}) do
    path_params_spec = schema(%{})
    params_spec = Norm.Delegate.delegate(&SquareUp.NormSchema.v1_employee/0)

    response_spec = {:delegate, &SquareUp.ResponseSchema.v1_employee/0}

    call(client, %{
      method: :post,
      path_params: path_params,
      params: params,
      path_params_spec: path_params_spec,
      params_spec: params_spec,
      response_spec: response_spec,
      path: "/v1/me/employees"
    })
  end
end
