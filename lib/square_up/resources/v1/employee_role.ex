defmodule SquareUp.V1.EmployeeRole do
  import Norm
  import SquareUp.Client, only: [call: 2]

  def retrieve(client, params \\ %{}) do
    norm_spec = schema(%{"role_id" => spec(is_binary())})

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      path: "/v1/me/roles/#{Map.get(params, "role_id")}"
    })
  end

  def update(client, params \\ %{}) do
    norm_spec =
      schema(%{"role_id" => spec(is_binary()), "body" => spec(SquareUp.Schema.v1_employee_role())})

    call(client, %{
      method: :put,
      params: params,
      spec: norm_spec,
      path: "/v1/me/roles/#{Map.get(params, "role_id")}"
    })
  end

  def create(client, params \\ %{}) do
    norm_spec = schema(%{"employee_role" => spec(SquareUp.Schema.v1_employee_role())})

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      path: "/v1/me/roles"
    })
  end
end
