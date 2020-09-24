defmodule SquareUp.CustomerGroup do
  import Norm
  import SquareUp.Client, only: [call: 2]

  def create(client, params) do
    norm_spec = spec(SquareUp.Schema.create_customer_group_request())

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      path: "/v2/customers/groups"
    })
  end

  def delete(client, params) do
    norm_spec = schema(%{"group_id" => spec(is_binary())})

    call(client, %{
      method: :delete,
      params: params,
      spec: norm_spec,
      path: "/v2/customers/groups/#{Map.get(params, "group_id")}"
    })
  end

  def retrieve(client, params) do
    norm_spec = schema(%{"group_id" => spec(is_binary())})

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      path: "/v2/customers/groups/#{Map.get(params, "group_id")}"
    })
  end

  def update(client, params) do
    norm_spec =
      schema(%{
        "group_id" => spec(is_binary()),
        "body" => spec(SquareUp.Schema.update_customer_group_request())
      })

    call(client, %{
      method: :put,
      params: params,
      spec: norm_spec,
      path: "/v2/customers/groups/#{Map.get(params, "group_id")}"
    })
  end
end
