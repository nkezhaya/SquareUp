defmodule SquareUp.V2.Customer do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec create(SquareUp.Client.t(), SquareUp.TypeSpecs.create_customer_request()) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.create_customer_response())
  def create(client, params \\ %{}) do
    norm_spec = Norm.Delegate.delegate(&SquareUp.NormSchema.create_customer_request/0)

    response_spec = {:delegate, &SquareUp.ResponseSchema.create_customer_response/0}

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v2/customers"
    })
  end

  @spec remove_group(SquareUp.Client.t(), %{customer_id: binary(), group_id: binary()}) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.remove_group_from_customer_response())
  def remove_group(client, params \\ %{}) do
    norm_spec = schema(%{customer_id: spec(is_binary()), group_id: spec(is_binary())})

    response_spec = {:delegate, &SquareUp.ResponseSchema.remove_group_from_customer_response/0}

    call(client, %{
      method: :delete,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path:
        "/v2/customers/#{Map.get(params, "customer_id")}/groups/#{Map.get(params, "group_id")}"
    })
  end

  @spec add_group(SquareUp.Client.t(), %{customer_id: binary(), group_id: binary()}) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.add_group_to_customer_response())
  def add_group(client, params \\ %{}) do
    norm_spec = schema(%{customer_id: spec(is_binary()), group_id: spec(is_binary())})

    response_spec = {:delegate, &SquareUp.ResponseSchema.add_group_to_customer_response/0}

    call(client, %{
      method: :put,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path:
        "/v2/customers/#{Map.get(params, "customer_id")}/groups/#{Map.get(params, "group_id")}"
    })
  end

  @spec delete(SquareUp.Client.t(), %{customer_id: binary()}) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.delete_customer_response())
  def delete(client, params \\ %{}) do
    norm_spec = schema(%{customer_id: spec(is_binary())})

    response_spec = {:delegate, &SquareUp.ResponseSchema.delete_customer_response/0}

    call(client, %{
      method: :delete,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v2/customers/#{Map.get(params, "customer_id")}"
    })
  end

  @spec retrieve(SquareUp.Client.t(), %{customer_id: binary()}) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.retrieve_customer_response())
  def retrieve(client, params \\ %{}) do
    norm_spec = schema(%{customer_id: spec(is_binary())})

    response_spec = {:delegate, &SquareUp.ResponseSchema.retrieve_customer_response/0}

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v2/customers/#{Map.get(params, "customer_id")}"
    })
  end

  @spec update(SquareUp.Client.t(), %{
          customer_id: binary(),
          body: SquareUp.TypeSpecs.update_customer_request()
        }) :: SquareUp.Client.response(SquareUp.TypeSpecs.update_customer_response())
  def update(client, params \\ %{}) do
    norm_spec =
      schema(%{
        customer_id: spec(is_binary()),
        body: Norm.Delegate.delegate(&SquareUp.NormSchema.update_customer_request/0)
      })

    response_spec = {:delegate, &SquareUp.ResponseSchema.update_customer_response/0}

    call(client, %{
      method: :put,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v2/customers/#{Map.get(params, "customer_id")}"
    })
  end
end
