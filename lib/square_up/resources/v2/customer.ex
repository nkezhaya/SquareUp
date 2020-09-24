defmodule SquareUp.V2.Customer do
  import Norm
  import SquareUp.Client, only: [call: 2]

  def create(client, params) do
    norm_spec = spec(SquareUp.Schema.create_customer_request())

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      path: "/v2/customers"
    })
  end

  def remove_group(client, params) do
    norm_spec = schema(%{"customer_id" => spec(is_binary()), "group_id" => spec(is_binary())})

    call(client, %{
      method: :delete,
      params: params,
      spec: norm_spec,
      path:
        "/v2/customers/#{Map.get(params, "customer_id")}/groups/#{Map.get(params, "group_id")}"
    })
  end

  def add_group(client, params) do
    norm_spec = schema(%{"customer_id" => spec(is_binary()), "group_id" => spec(is_binary())})

    call(client, %{
      method: :put,
      params: params,
      spec: norm_spec,
      path:
        "/v2/customers/#{Map.get(params, "customer_id")}/groups/#{Map.get(params, "group_id")}"
    })
  end

  def delete(client, params) do
    norm_spec = schema(%{"customer_id" => spec(is_binary())})

    call(client, %{
      method: :delete,
      params: params,
      spec: norm_spec,
      path: "/v2/customers/#{Map.get(params, "customer_id")}"
    })
  end

  def retrieve(client, params) do
    norm_spec = schema(%{"customer_id" => spec(is_binary())})

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      path: "/v2/customers/#{Map.get(params, "customer_id")}"
    })
  end

  def update(client, params) do
    norm_spec =
      schema(%{
        "customer_id" => spec(is_binary()),
        "body" => spec(SquareUp.Schema.update_customer_request())
      })

    call(client, %{
      method: :put,
      params: params,
      spec: norm_spec,
      path: "/v2/customers/#{Map.get(params, "customer_id")}"
    })
  end
end
