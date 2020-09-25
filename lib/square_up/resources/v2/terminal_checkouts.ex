defmodule SquareUp.V2.TerminalCheckouts do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec search(SquareUp.Client.t(), SquareUp.TypeSpecs.search_terminal_checkouts_request()) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.search_terminal_checkouts_response())
  def search(client, params \\ %{}) do
    norm_spec = Norm.Delegate.delegate(&SquareUp.NormSchema.search_terminal_checkouts_request/0)

    response_spec = {:delegate, &SquareUp.ResponseSchema.search_terminal_checkouts_response/0}

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v2/terminals/checkouts/search"
    })
  end
end
