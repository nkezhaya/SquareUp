defmodule SquareUp.V2.Shifts do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec search(SquareUp.Client.t(), SquareUp.TypeSpecs.search_shifts_request()) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.search_shifts_response())
  def search(client, params \\ %{}) do
    norm_spec = Norm.Delegate.delegate(&SquareUp.NormSchema.search_shifts_request/0)

    response_spec = {:delegate, &SquareUp.ResponseSchema.search_shifts_response/0}

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v2/labor/shifts/search"
    })
  end
end
