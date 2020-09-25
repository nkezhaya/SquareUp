defmodule SquareUp.V2.CustomerGroup do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec create(SquareUp.Client.t(), SquareUp.TypeSpecs.create_customer_group_request()) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.create_customer_group_response())
  def create(client, params \\ %{}) do
    norm_spec = Norm.Delegate.delegate(&SquareUp.NormSchema.create_customer_group_request/0)

    response_spec = {:delegate, &SquareUp.ResponseSchema.create_customer_group_response/0}

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v2/customers/groups"
    })
  end

  @spec delete(SquareUp.Client.t(), %{group_id: binary()}) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.delete_customer_group_response())
  def delete(client, params \\ %{}) do
    norm_spec = schema(%{group_id: spec(is_binary())})

    response_spec = {:delegate, &SquareUp.ResponseSchema.delete_customer_group_response/0}

    call(client, %{
      method: :delete,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v2/customers/groups/#{Map.get(params, "group_id")}"
    })
  end

  @spec retrieve(SquareUp.Client.t(), %{group_id: binary()}) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.retrieve_customer_group_response())
  def retrieve(client, params \\ %{}) do
    norm_spec = schema(%{group_id: spec(is_binary())})

    response_spec = {:delegate, &SquareUp.ResponseSchema.retrieve_customer_group_response/0}

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v2/customers/groups/#{Map.get(params, "group_id")}"
    })
  end

  @spec update(SquareUp.Client.t(), %{
          group_id: binary(),
          body: SquareUp.TypeSpecs.update_customer_group_request()
        }) :: SquareUp.Client.response(SquareUp.TypeSpecs.update_customer_group_response())
  def update(client, params \\ %{}) do
    norm_spec =
      schema(%{
        group_id: spec(is_binary()),
        body: Norm.Delegate.delegate(&SquareUp.NormSchema.update_customer_group_request/0)
      })

    response_spec = {:delegate, &SquareUp.ResponseSchema.update_customer_group_response/0}

    call(client, %{
      method: :put,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v2/customers/groups/#{Map.get(params, "group_id")}"
    })
  end
end
