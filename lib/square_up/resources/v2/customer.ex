defmodule SquareUp.V2.Customer do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec create(SquareUp.Client.t(), %{}, %{}, SquareUp.TypeSpecs.create_customer_request()) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.create_customer_response())
  def create(client, path_params \\ %{}, query_params \\ %{}, params \\ %{}) do
    path_params_spec = schema(%{})
    query_params_spec = schema(%{})
    params_spec = Norm.Delegate.delegate(&SquareUp.NormSchema.create_customer_request/0)

    response_spec = {:delegate, &SquareUp.ResponseSchema.create_customer_response/0}

    call(client, %{
      method: :post,
      path_params: path_params,
      query_params: query_params,
      params: params,
      path_params_spec: path_params_spec,
      query_params_spec: query_params_spec,
      params_spec: params_spec,
      response_spec: response_spec,
      path: "/v2/customers"
    })
  end

  @spec remove_group(
          SquareUp.Client.t(),
          %{required(:customer_id) => binary(), required(:group_id) => binary()},
          %{},
          %{}
        ) :: SquareUp.Client.response(SquareUp.TypeSpecs.remove_group_from_customer_response())
  def remove_group(client, path_params \\ %{}, query_params \\ %{}, params \\ %{}) do
    path_params_spec = schema(%{customer_id: spec(is_binary()), group_id: spec(is_binary())})
    query_params_spec = schema(%{})
    params_spec = schema(%{})

    response_spec = {:delegate, &SquareUp.ResponseSchema.remove_group_from_customer_response/0}

    call(client, %{
      method: :delete,
      path_params: path_params,
      query_params: query_params,
      params: params,
      path_params_spec: path_params_spec,
      query_params_spec: query_params_spec,
      params_spec: params_spec,
      response_spec: response_spec,
      path: "/v2/customers/{customer_id}/groups/{group_id}"
    })
  end

  @spec add_group(
          SquareUp.Client.t(),
          %{required(:customer_id) => binary(), required(:group_id) => binary()},
          %{},
          %{}
        ) :: SquareUp.Client.response(SquareUp.TypeSpecs.add_group_to_customer_response())
  def add_group(client, path_params \\ %{}, query_params \\ %{}, params \\ %{}) do
    path_params_spec = schema(%{customer_id: spec(is_binary()), group_id: spec(is_binary())})
    query_params_spec = schema(%{})
    params_spec = schema(%{})

    response_spec = {:delegate, &SquareUp.ResponseSchema.add_group_to_customer_response/0}

    call(client, %{
      method: :put,
      path_params: path_params,
      query_params: query_params,
      params: params,
      path_params_spec: path_params_spec,
      query_params_spec: query_params_spec,
      params_spec: params_spec,
      response_spec: response_spec,
      path: "/v2/customers/{customer_id}/groups/{group_id}"
    })
  end

  @spec delete(SquareUp.Client.t(), %{required(:customer_id) => binary()}, %{}, %{}) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.delete_customer_response())
  def delete(client, path_params \\ %{}, query_params \\ %{}, params \\ %{}) do
    path_params_spec = schema(%{customer_id: spec(is_binary())})
    query_params_spec = schema(%{})
    params_spec = schema(%{})

    response_spec = {:delegate, &SquareUp.ResponseSchema.delete_customer_response/0}

    call(client, %{
      method: :delete,
      path_params: path_params,
      query_params: query_params,
      params: params,
      path_params_spec: path_params_spec,
      query_params_spec: query_params_spec,
      params_spec: params_spec,
      response_spec: response_spec,
      path: "/v2/customers/{customer_id}"
    })
  end

  @spec retrieve(SquareUp.Client.t(), %{required(:customer_id) => binary()}, %{}, %{}) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.retrieve_customer_response())
  def retrieve(client, path_params \\ %{}, query_params \\ %{}, params \\ %{}) do
    path_params_spec = schema(%{customer_id: spec(is_binary())})
    query_params_spec = schema(%{})
    params_spec = schema(%{})

    response_spec = {:delegate, &SquareUp.ResponseSchema.retrieve_customer_response/0}

    call(client, %{
      method: :get,
      path_params: path_params,
      query_params: query_params,
      params: params,
      path_params_spec: path_params_spec,
      query_params_spec: query_params_spec,
      params_spec: params_spec,
      response_spec: response_spec,
      path: "/v2/customers/{customer_id}"
    })
  end

  @spec update(
          SquareUp.Client.t(),
          %{required(:customer_id) => binary()},
          %{},
          SquareUp.TypeSpecs.update_customer_request()
        ) :: SquareUp.Client.response(SquareUp.TypeSpecs.update_customer_response())
  def update(client, path_params \\ %{}, query_params \\ %{}, params \\ %{}) do
    path_params_spec = schema(%{customer_id: spec(is_binary())})
    query_params_spec = schema(%{})
    params_spec = Norm.Delegate.delegate(&SquareUp.NormSchema.update_customer_request/0)

    response_spec = {:delegate, &SquareUp.ResponseSchema.update_customer_response/0}

    call(client, %{
      method: :put,
      path_params: path_params,
      query_params: query_params,
      params: params,
      path_params_spec: path_params_spec,
      query_params_spec: query_params_spec,
      params_spec: params_spec,
      response_spec: response_spec,
      path: "/v2/customers/{customer_id}"
    })
  end
end
