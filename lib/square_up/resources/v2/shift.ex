defmodule SquareUp.V2.Shift do
  import Norm
  import SquareUp.Client, only: [call: 2]

  def delete(client, params) do
    norm_spec = schema(%{"id" => spec(is_binary())})

    call(client, %{
      method: :delete,
      params: params,
      spec: norm_spec,
      path: "/v2/labor/shifts/#{Map.get(params, "id")}"
    })
  end

  def get(client, params) do
    norm_spec = schema(%{"id" => spec(is_binary())})

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      path: "/v2/labor/shifts/#{Map.get(params, "id")}"
    })
  end

  def update(client, params) do
    norm_spec =
      schema(%{"id" => spec(is_binary()), "body" => spec(SquareUp.Schema.update_shift_request())})

    call(client, %{
      method: :put,
      params: params,
      spec: norm_spec,
      path: "/v2/labor/shifts/#{Map.get(params, "id")}"
    })
  end

  def create(client, params) do
    norm_spec = spec(SquareUp.Schema.create_shift_request())

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      path: "/v2/labor/shifts"
    })
  end
end
