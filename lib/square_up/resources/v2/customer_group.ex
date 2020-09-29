defmodule SquareUp.V2.CustomerGroup do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec create(SquareUp.Client.t(), %{}, SquareUp.TypeSpecs.create_customer_group_request()) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.create_customer_group_response())
  def create(client, path_params \\ %{}, params \\ %{}) do
    path_params_spec = schema(%{})
    params_spec = Norm.Delegate.delegate(&SquareUp.NormSchema.create_customer_group_request/0)

    response_spec = {:delegate, &SquareUp.ResponseSchema.create_customer_group_response/0}

    call(client, %{
      method: :post,
      path_params: path_params,
      params: params,
      path_params_spec: path_params_spec,
      params_spec: params_spec,
      response_spec: response_spec,
      path: "/v2/customers/groups"
    })
  end

  @spec delete(SquareUp.Client.t(), %{required(:group_id) => binary()}, %{}) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.delete_customer_group_response())
  def delete(client, path_params \\ %{}, params \\ %{}) do
    path_params_spec = schema(%{group_id: spec(is_binary())})
    params_spec = schema(%{})

    response_spec = {:delegate, &SquareUp.ResponseSchema.delete_customer_group_response/0}

    call(client, %{
      method: :delete,
      path_params: path_params,
      params: params,
      path_params_spec: path_params_spec,
      params_spec: params_spec,
      response_spec: response_spec,
      path: "/v2/customers/groups/{group_id}"
    })
  end

  @spec retrieve(SquareUp.Client.t(), %{required(:group_id) => binary()}, %{}) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.retrieve_customer_group_response())
  def retrieve(client, path_params \\ %{}, params \\ %{}) do
    path_params_spec = schema(%{group_id: spec(is_binary())})
    params_spec = schema(%{})

    response_spec = {:delegate, &SquareUp.ResponseSchema.retrieve_customer_group_response/0}

    call(client, %{
      method: :get,
      path_params: path_params,
      params: params,
      path_params_spec: path_params_spec,
      params_spec: params_spec,
      response_spec: response_spec,
      path: "/v2/customers/groups/{group_id}"
    })
  end

  @spec update(
          SquareUp.Client.t(),
          %{required(:group_id) => binary()},
          SquareUp.TypeSpecs.update_customer_group_request()
        ) :: SquareUp.Client.response(SquareUp.TypeSpecs.update_customer_group_response())
  def update(client, path_params \\ %{}, params \\ %{}) do
    path_params_spec = schema(%{group_id: spec(is_binary())})
    params_spec = Norm.Delegate.delegate(&SquareUp.NormSchema.update_customer_group_request/0)

    response_spec = {:delegate, &SquareUp.ResponseSchema.update_customer_group_response/0}

    call(client, %{
      method: :put,
      path_params: path_params,
      params: params,
      path_params_spec: path_params_spec,
      params_spec: params_spec,
      response_spec: response_spec,
      path: "/v2/customers/groups/{group_id}"
    })
  end
end
