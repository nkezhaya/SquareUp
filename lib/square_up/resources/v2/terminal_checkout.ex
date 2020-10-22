defmodule SquareUp.V2.TerminalCheckout do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec create(
          SquareUp.Client.t(),
          %{},
          %{},
          SquareUp.TypeSpecs.create_terminal_checkout_request()
        ) :: SquareUp.Client.response(SquareUp.TypeSpecs.create_terminal_checkout_response())
  def create(client, path_params \\ %{}, query_params \\ %{}, params \\ %{}) do
    path_params_spec = schema(%{})
    query_params_spec = schema(%{})
    params_spec = Norm.Delegate.delegate(&SquareUp.NormSchema.create_terminal_checkout_request/0)

    response_spec = {:delegate, &SquareUp.ResponseSchema.create_terminal_checkout_response/0}

    call(client, %{
      method: :post,
      path_params: path_params,
      query_params: query_params,
      params: params,
      path_params_spec: path_params_spec,
      query_params_spec: query_params_spec,
      params_spec: params_spec,
      response_spec: response_spec,
      path: "/v2/terminals/checkouts"
    })
  end

  @spec get(SquareUp.Client.t(), %{required(:checkout_id) => binary()}, %{}, %{}) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.get_terminal_checkout_response())
  def get(client, path_params \\ %{}, query_params \\ %{}, params \\ %{}) do
    path_params_spec = schema(%{checkout_id: spec(is_binary())})
    query_params_spec = schema(%{})
    params_spec = schema(%{})

    response_spec = {:delegate, &SquareUp.ResponseSchema.get_terminal_checkout_response/0}

    call(client, %{
      method: :get,
      path_params: path_params,
      query_params: query_params,
      params: params,
      path_params_spec: path_params_spec,
      query_params_spec: query_params_spec,
      params_spec: params_spec,
      response_spec: response_spec,
      path: "/v2/terminals/checkouts/{checkout_id}"
    })
  end

  @spec cancel(SquareUp.Client.t(), %{required(:checkout_id) => binary()}, %{}, %{}) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.cancel_terminal_checkout_response())
  def cancel(client, path_params \\ %{}, query_params \\ %{}, params \\ %{}) do
    path_params_spec = schema(%{checkout_id: spec(is_binary())})
    query_params_spec = schema(%{})
    params_spec = schema(%{})

    response_spec = {:delegate, &SquareUp.ResponseSchema.cancel_terminal_checkout_response/0}

    call(client, %{
      method: :post,
      path_params: path_params,
      query_params: query_params,
      params: params,
      path_params_spec: path_params_spec,
      query_params_spec: query_params_spec,
      params_spec: params_spec,
      response_spec: response_spec,
      path: "/v2/terminals/checkouts/{checkout_id}/cancel"
    })
  end
end
