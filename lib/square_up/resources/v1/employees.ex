defmodule SquareUp.V1.Employees do
  import Norm
  import SquareUp.Client, only: [call: 2]

  def list(client, params) do
    norm_spec =
      schema(%{
        "order" => spec(is_binary()),
        "begin_updated_at" => spec(is_binary()),
        "end_updated_at" => spec(is_binary()),
        "begin_created_at" => spec(is_binary()),
        "end_created_at" => spec(is_binary()),
        "status" => spec(is_binary()),
        "external_id" => spec(is_binary()),
        "limit" => spec(is_integer()),
        "batch_token" => spec(is_binary())
      })

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      path: "/v1/me/employees"
    })
  end
end
