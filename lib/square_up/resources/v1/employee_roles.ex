defmodule SquareUp.V1.EmployeeRoles do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec list(%SquareUp.Client{}, %{order: binary(), limit: integer(), batch_token: binary()}) ::
          SquareUp.Client.response()
  def list(client, params \\ %{}) do
    norm_spec =
      schema(%{
        order: spec(is_binary()),
        limit: spec(is_integer()),
        batch_token: spec(is_binary())
      })

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      path: "/v1/me/roles"
    })
  end
end
