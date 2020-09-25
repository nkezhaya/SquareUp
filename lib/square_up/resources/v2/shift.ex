defmodule SquareUp.V2.Shift do
  import Norm
  import SquareUp.Client, only: [call: 2]
  @spec delete(%SquareUp.Client{}, %{id: binary()}) :: SquareUp.Client.response()
  def delete(client, params \\ %{}) do
    norm_spec = schema(%{id: spec(is_binary())})

    call(client, %{
      method: :delete,
      params: params,
      spec: norm_spec,
      path: "/v2/labor/shifts/#{Map.get(params, "id")}"
    })
  end

  @spec get(%SquareUp.Client{}, %{id: binary()}) :: SquareUp.Client.response()
  def get(client, params \\ %{}) do
    norm_spec = schema(%{id: spec(is_binary())})

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      path: "/v2/labor/shifts/#{Map.get(params, "id")}"
    })
  end

  @spec update(%SquareUp.Client{}, %{id: binary(), body: SquareUp.Schema.update_shift_request()}) ::
          SquareUp.Client.response()
  def update(client, params \\ %{}) do
    norm_spec =
      schema(%{
        id: spec(is_binary()),
        body: Norm.Delegate.delegate(&SquareUp.Schema.update_shift_request/0)
      })

    call(client, %{
      method: :put,
      params: params,
      spec: norm_spec,
      path: "/v2/labor/shifts/#{Map.get(params, "id")}"
    })
  end

  @spec create(%SquareUp.Client{}, SquareUp.Schema.create_shift_request()) ::
          SquareUp.Client.response()
  def create(client, params \\ %{}) do
    norm_spec = Norm.Delegate.delegate(&SquareUp.Schema.create_shift_request/0)

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      path: "/v2/labor/shifts"
    })
  end
end
