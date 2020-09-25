defmodule SquareUp.V2.TerminalCheckout do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec create(SquareUp.Client.t(), SquareUp.TypeSpecs.create_terminal_checkout_request()) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.create_terminal_checkout_response())
  def create(client, params \\ %{}) do
    norm_spec = Norm.Delegate.delegate(&SquareUp.NormSchema.create_terminal_checkout_request/0)

    response_spec = {:delegate, &SquareUp.ResponseSchema.create_terminal_checkout_response/0}

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v2/terminals/checkouts"
    })
  end

  @spec get(SquareUp.Client.t(), %{checkout_id: binary()}) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.get_terminal_checkout_response())
  def get(client, params \\ %{}) do
    norm_spec = schema(%{checkout_id: spec(is_binary())})

    response_spec = {:delegate, &SquareUp.ResponseSchema.get_terminal_checkout_response/0}

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v2/terminals/checkouts/#{Map.get(params, "checkout_id")}"
    })
  end

  @spec cancel(SquareUp.Client.t(), %{checkout_id: binary()}) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.cancel_terminal_checkout_response())
  def cancel(client, params \\ %{}) do
    norm_spec = schema(%{checkout_id: spec(is_binary())})

    response_spec = {:delegate, &SquareUp.ResponseSchema.cancel_terminal_checkout_response/0}

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v2/terminals/checkouts/#{Map.get(params, "checkout_id")}/cancel"
    })
  end
end
