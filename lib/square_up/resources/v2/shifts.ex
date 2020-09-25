defmodule SquareUp.V2.Shifts do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec search(%SquareUp.Client{}, SquareUp.Schema.search_shifts_request()) ::
          SquareUp.Client.response()
  def search(client, params \\ %{}) do
    norm_spec = Norm.Delegate.delegate(&SquareUp.Schema.search_shifts_request/0)

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      path: "/v2/labor/shifts/search"
    })
  end
end
