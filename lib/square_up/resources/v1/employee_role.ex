defmodule SquareUp.V1.EmployeeRole do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec retrieve(SquareUp.Client.t(), %{role_id: binary()}) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.v1_employee_role())
  def retrieve(client, params \\ %{}) do
    norm_spec = schema(%{role_id: spec(is_binary())})

    response_spec = {:delegate, &SquareUp.ResponseSchema.v1_employee_role/0}

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v1/me/roles/#{Map.get(params, "role_id")}"
    })
  end

  @spec update(SquareUp.Client.t(), %{
          role_id: binary(),
          body: SquareUp.TypeSpecs.v1_employee_role()
        }) :: SquareUp.Client.response(SquareUp.TypeSpecs.v1_employee_role())
  def update(client, params \\ %{}) do
    norm_spec =
      schema(%{
        role_id: spec(is_binary()),
        body: Norm.Delegate.delegate(&SquareUp.NormSchema.v1_employee_role/0)
      })

    response_spec = {:delegate, &SquareUp.ResponseSchema.v1_employee_role/0}

    call(client, %{
      method: :put,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v1/me/roles/#{Map.get(params, "role_id")}"
    })
  end

  @spec create(SquareUp.Client.t(), %{employee_role: SquareUp.TypeSpecs.v1_employee_role()}) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.v1_employee_role())
  def create(client, params \\ %{}) do
    norm_spec =
      schema(%{employee_role: Norm.Delegate.delegate(&SquareUp.NormSchema.v1_employee_role/0)})

    response_spec = {:delegate, &SquareUp.ResponseSchema.v1_employee_role/0}

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v1/me/roles"
    })
  end
end
