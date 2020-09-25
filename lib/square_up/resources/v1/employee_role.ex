defmodule SquareUp.V1.EmployeeRole do
  import Norm
  import SquareUp.Client, only: [call: 2]
  @spec retrieve(%SquareUp.Client{}, %{role_id: binary()}) :: SquareUp.Client.response()
  def retrieve(client, params \\ %{}) do
    norm_spec = schema(%{role_id: spec(is_binary())})

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      path: "/v1/me/roles/#{Map.get(params, "role_id")}"
    })
  end

  @spec update(%SquareUp.Client{}, %{role_id: binary(), body: SquareUp.Schema.v1_employee_role()}) ::
          SquareUp.Client.response()
  def update(client, params \\ %{}) do
    norm_spec =
      schema(%{
        role_id: spec(is_binary()),
        body: Norm.Delegate.delegate(&SquareUp.Schema.v1_employee_role/0)
      })

    call(client, %{
      method: :put,
      params: params,
      spec: norm_spec,
      path: "/v1/me/roles/#{Map.get(params, "role_id")}"
    })
  end

  @spec create(%SquareUp.Client{}, %{employee_role: SquareUp.Schema.v1_employee_role()}) ::
          SquareUp.Client.response()
  def create(client, params \\ %{}) do
    norm_spec =
      schema(%{employee_role: Norm.Delegate.delegate(&SquareUp.Schema.v1_employee_role/0)})

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      path: "/v1/me/roles"
    })
  end
end
