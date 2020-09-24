defmodule SquareUp.V2.TerminalCheckout do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec create(%SquareUp.Client{}, SquareUp.Schema.create_terminal_checkout_request()) ::
          SquareUp.Client.response()
  def create(client, params \\ %{}) do
    norm_spec = spec(SquareUp.Schema.create_terminal_checkout_request())

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      path: "/v2/terminals/checkouts"
    })
  end

  @spec get(%SquareUp.Client{}, %{checkout_id: binary()}) :: SquareUp.Client.response()
  def get(client, params \\ %{}) do
    norm_spec = schema(%{checkout_id: spec(is_binary())})

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      path: "/v2/terminals/checkouts/#{Map.get(params, "checkout_id")}"
    })
  end

  @spec cancel(%SquareUp.Client{}, %{checkout_id: binary()}) :: SquareUp.Client.response()
  def cancel(client, params \\ %{}) do
    norm_spec = schema(%{checkout_id: spec(is_binary())})

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      path: "/v2/terminals/checkouts/#{Map.get(params, "checkout_id")}/cancel"
    })
  end
end
