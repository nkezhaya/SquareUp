defmodule SquareUp.V2.BreakType do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec delete(SquareUp.Client.t(), %{required(:id) => binary()}, %{}) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.delete_break_type_response())
  def delete(client, path_params \\ %{}, params \\ %{}) do
    path_params_spec = schema(%{id: spec(is_binary())})
    params_spec = schema(%{})

    response_spec = {:delegate, &SquareUp.ResponseSchema.delete_break_type_response/0}

    call(client, %{
      method: :delete,
      path_params: path_params,
      params: params,
      path_params_spec: path_params_spec,
      params_spec: params_spec,
      response_spec: response_spec,
      path: "/v2/labor/break-types/{id}"
    })
  end

  @spec get(SquareUp.Client.t(), %{required(:id) => binary()}, %{}) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.get_break_type_response())
  def get(client, path_params \\ %{}, params \\ %{}) do
    path_params_spec = schema(%{id: spec(is_binary())})
    params_spec = schema(%{})

    response_spec = {:delegate, &SquareUp.ResponseSchema.get_break_type_response/0}

    call(client, %{
      method: :get,
      path_params: path_params,
      params: params,
      path_params_spec: path_params_spec,
      params_spec: params_spec,
      response_spec: response_spec,
      path: "/v2/labor/break-types/{id}"
    })
  end

  @spec update(
          SquareUp.Client.t(),
          %{required(:id) => binary()},
          SquareUp.TypeSpecs.update_break_type_request()
        ) :: SquareUp.Client.response(SquareUp.TypeSpecs.update_break_type_response())
  def update(client, path_params \\ %{}, params \\ %{}) do
    path_params_spec = schema(%{id: spec(is_binary())})
    params_spec = Norm.Delegate.delegate(&SquareUp.NormSchema.update_break_type_request/0)

    response_spec = {:delegate, &SquareUp.ResponseSchema.update_break_type_response/0}

    call(client, %{
      method: :put,
      path_params: path_params,
      params: params,
      path_params_spec: path_params_spec,
      params_spec: params_spec,
      response_spec: response_spec,
      path: "/v2/labor/break-types/{id}"
    })
  end

  @spec create(SquareUp.Client.t(), %{}, SquareUp.TypeSpecs.create_break_type_request()) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.create_break_type_response())
  def create(client, path_params \\ %{}, params \\ %{}) do
    path_params_spec = schema(%{})
    params_spec = Norm.Delegate.delegate(&SquareUp.NormSchema.create_break_type_request/0)

    response_spec = {:delegate, &SquareUp.ResponseSchema.create_break_type_response/0}

    call(client, %{
      method: :post,
      path_params: path_params,
      params: params,
      path_params_spec: path_params_spec,
      params_spec: params_spec,
      response_spec: response_spec,
      path: "/v2/labor/break-types"
    })
  end
end
