defmodule SquareUp.V1.Employee do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec retrieve(SquareUp.Client.t(), %{employee_id: binary()}) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.v1_employee())
  def retrieve(client, params \\ %{}) do
    norm_spec = schema(%{employee_id: spec(is_binary())})

    response_spec = {:delegate, &SquareUp.ResponseSchema.v1_employee/0}

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v1/me/employees/#{Map.get(params, "employee_id")}"
    })
  end

  @spec update(SquareUp.Client.t(), %{
          employee_id: binary(),
          body: SquareUp.TypeSpecs.v1_employee()
        }) :: SquareUp.Client.response(SquareUp.TypeSpecs.v1_employee())
  def update(client, params \\ %{}) do
    norm_spec =
      schema(%{
        employee_id: spec(is_binary()),
        body: Norm.Delegate.delegate(&SquareUp.NormSchema.v1_employee/0)
      })

    response_spec = {:delegate, &SquareUp.ResponseSchema.v1_employee/0}

    call(client, %{
      method: :put,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v1/me/employees/#{Map.get(params, "employee_id")}"
    })
  end

  @spec create(SquareUp.Client.t(), SquareUp.TypeSpecs.v1_employee()) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.v1_employee())
  def create(client, params \\ %{}) do
    norm_spec = Norm.Delegate.delegate(&SquareUp.NormSchema.v1_employee/0)

    response_spec = {:delegate, &SquareUp.ResponseSchema.v1_employee/0}

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v1/me/employees"
    })
  end
end
