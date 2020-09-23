defmodule SquareUp.Customer do
  import SquareUp.Client, only: [call: 2]

  def create(client, params) do
    call(client, %{
      method: :post,
      params: params,
      path: "/v2/customers"
    })
  end

  def remove_group(client, params) do
    call(client, %{
      method: :delete,
      params: params,
      path:
        "/v2/customers/#{Map.get(params, "customer_id")}/groups/#{Map.get(params, "group_id")}"
    })
  end

  def add_group(client, params) do
    call(client, %{
      method: :put,
      params: params,
      path:
        "/v2/customers/#{Map.get(params, "customer_id")}/groups/#{Map.get(params, "group_id")}"
    })
  end

  def delete(client, params) do
    call(client, %{
      method: :delete,
      params: params,
      path: "/v2/customers/#{Map.get(params, "customer_id")}"
    })
  end

  def retrieve(client, params) do
    call(client, %{
      method: :get,
      params: params,
      path: "/v2/customers/#{Map.get(params, "customer_id")}"
    })
  end

  def update(client, params) do
    call(client, %{
      method: :put,
      params: params,
      path: "/v2/customers/#{Map.get(params, "customer_id")}"
    })
  end
end
