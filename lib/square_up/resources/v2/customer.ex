defmodule SquareUp.V2.Customer do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec create(%SquareUp.Client{}, SquareUp.Schema.create_customer_request()) ::
          SquareUp.Client.response()
  def create(client, params \\ %{}) do
    norm_spec = spec(SquareUp.Schema.create_customer_request())

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      path: "/v2/customers"
    })
  end

  @spec remove_group(%SquareUp.Client{}, %{customer_id: binary(), group_id: binary()}) ::
          SquareUp.Client.response()
  def remove_group(client, params \\ %{}) do
    norm_spec = schema(%{customer_id: spec(is_binary()), group_id: spec(is_binary())})

    call(client, %{
      method: :delete,
      params: params,
      spec: norm_spec,
      path:
        "/v2/customers/#{Map.get(params, "customer_id")}/groups/#{Map.get(params, "group_id")}"
    })
  end

  @spec add_group(%SquareUp.Client{}, %{customer_id: binary(), group_id: binary()}) ::
          SquareUp.Client.response()
  def add_group(client, params \\ %{}) do
    norm_spec = schema(%{customer_id: spec(is_binary()), group_id: spec(is_binary())})

    call(client, %{
      method: :put,
      params: params,
      spec: norm_spec,
      path:
        "/v2/customers/#{Map.get(params, "customer_id")}/groups/#{Map.get(params, "group_id")}"
    })
  end

  @spec delete(%SquareUp.Client{}, %{customer_id: binary()}) :: SquareUp.Client.response()
  def delete(client, params \\ %{}) do
    norm_spec = schema(%{customer_id: spec(is_binary())})

    call(client, %{
      method: :delete,
      params: params,
      spec: norm_spec,
      path: "/v2/customers/#{Map.get(params, "customer_id")}"
    })
  end

  @spec retrieve(%SquareUp.Client{}, %{customer_id: binary()}) :: SquareUp.Client.response()
  def retrieve(client, params \\ %{}) do
    norm_spec = schema(%{customer_id: spec(is_binary())})

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      path: "/v2/customers/#{Map.get(params, "customer_id")}"
    })
  end

  @spec update(%SquareUp.Client{}, %{
          customer_id: binary(),
          body: SquareUp.Schema.update_customer_request()
        }) :: SquareUp.Client.response()
  def update(client, params \\ %{}) do
    norm_spec =
      schema(%{
        customer_id: spec(is_binary()),
        body: spec(SquareUp.Schema.update_customer_request())
      })

    call(client, %{
      method: :put,
      params: params,
      spec: norm_spec,
      path: "/v2/customers/#{Map.get(params, "customer_id")}"
    })
  end
end
