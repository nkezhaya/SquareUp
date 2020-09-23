defmodule SquareUp.BreakType do
  import SquareUp.Client, only: [call: 2]

  def delete(client, params) do
    call(client, %{
      method: :delete,
      params: params,
      path: "/v2/labor/break-types/#{Map.get(params, "id")}"
    })
  end

  def get(client, params) do
    call(client, %{
      method: :get,
      params: params,
      path: "/v2/labor/break-types/#{Map.get(params, "id")}"
    })
  end

  def update(client, params) do
    call(client, %{
      method: :put,
      params: params,
      path: "/v2/labor/break-types/#{Map.get(params, "id")}"
    })
  end

  def create(client, params) do
    call(client, %{
      method: :post,
      params: params,
      path: "/v2/labor/break-types"
    })
  end
end
