defmodule SquareUp.V2.CustomerGroup do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec create(%SquareUp.Client{}, SquareUp.Schema.create_customer_group_request()) ::
          SquareUp.Client.response()
  def create(client, params \\ %{}) do
    norm_spec = spec(SquareUp.Schema.create_customer_group_request())

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      path: "/v2/customers/groups"
    })
  end

  @spec delete(%SquareUp.Client{}, %{group_id: binary()}) :: SquareUp.Client.response()
  def delete(client, params \\ %{}) do
    norm_spec = schema(%{group_id: spec(is_binary())})

    call(client, %{
      method: :delete,
      params: params,
      spec: norm_spec,
      path: "/v2/customers/groups/#{Map.get(params, "group_id")}"
    })
  end

  @spec retrieve(%SquareUp.Client{}, %{group_id: binary()}) :: SquareUp.Client.response()
  def retrieve(client, params \\ %{}) do
    norm_spec = schema(%{group_id: spec(is_binary())})

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      path: "/v2/customers/groups/#{Map.get(params, "group_id")}"
    })
  end

  @spec update(%SquareUp.Client{}, %{
          group_id: binary(),
          body: SquareUp.Schema.update_customer_group_request()
        }) :: SquareUp.Client.response()
  def update(client, params \\ %{}) do
    norm_spec =
      schema(%{
        group_id: spec(is_binary()),
        body: spec(SquareUp.Schema.update_customer_group_request())
      })

    call(client, %{
      method: :put,
      params: params,
      spec: norm_spec,
      path: "/v2/customers/groups/#{Map.get(params, "group_id")}"
    })
  end
end
