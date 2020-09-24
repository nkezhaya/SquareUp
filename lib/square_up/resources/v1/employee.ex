defmodule SquareUp.V1.Employee do
  import Norm
  import SquareUp.Client, only: [call: 2]
  @spec retrieve(%SquareUp.Client{}, %{employee_id: binary()}) :: SquareUp.Client.response()
  def retrieve(client, params \\ %{}) do
    norm_spec = schema(%{employee_id: spec(is_binary())})

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      path: "/v1/me/employees/#{Map.get(params, "employee_id")}"
    })
  end

  @spec update(%SquareUp.Client{}, %{employee_id: binary(), body: SquareUp.Schema.v1_employee()}) ::
          SquareUp.Client.response()
  def update(client, params \\ %{}) do
    norm_spec =
      schema(%{employee_id: spec(is_binary()), body: spec(SquareUp.Schema.v1_employee())})

    call(client, %{
      method: :put,
      params: params,
      spec: norm_spec,
      path: "/v1/me/employees/#{Map.get(params, "employee_id")}"
    })
  end

  @spec create(%SquareUp.Client{}, SquareUp.Schema.v1_employee()) :: SquareUp.Client.response()
  def create(client, params \\ %{}) do
    norm_spec = spec(SquareUp.Schema.v1_employee())

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      path: "/v1/me/employees"
    })
  end
end
