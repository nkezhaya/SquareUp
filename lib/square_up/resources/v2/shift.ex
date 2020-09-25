defmodule SquareUp.V2.Shift do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec delete(SquareUp.Client.t(), %{id: binary()}) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.delete_shift_response())
  def delete(client, params \\ %{}) do
    norm_spec = schema(%{id: spec(is_binary())})

    response_spec = {:delegate, &SquareUp.ResponseSchema.delete_shift_response/0}

    call(client, %{
      method: :delete,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v2/labor/shifts/#{Map.get(params, "id")}"
    })
  end

  @spec get(SquareUp.Client.t(), %{id: binary()}) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.get_shift_response())
  def get(client, params \\ %{}) do
    norm_spec = schema(%{id: spec(is_binary())})

    response_spec = {:delegate, &SquareUp.ResponseSchema.get_shift_response/0}

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v2/labor/shifts/#{Map.get(params, "id")}"
    })
  end

  @spec update(SquareUp.Client.t(), %{
          id: binary(),
          body: SquareUp.TypeSpecs.update_shift_request()
        }) :: SquareUp.Client.response(SquareUp.TypeSpecs.update_shift_response())
  def update(client, params \\ %{}) do
    norm_spec =
      schema(%{
        id: spec(is_binary()),
        body: Norm.Delegate.delegate(&SquareUp.NormSchema.update_shift_request/0)
      })

    response_spec = {:delegate, &SquareUp.ResponseSchema.update_shift_response/0}

    call(client, %{
      method: :put,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v2/labor/shifts/#{Map.get(params, "id")}"
    })
  end

  @spec create(SquareUp.Client.t(), SquareUp.TypeSpecs.create_shift_request()) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.create_shift_response())
  def create(client, params \\ %{}) do
    norm_spec = Norm.Delegate.delegate(&SquareUp.NormSchema.create_shift_request/0)

    response_spec = {:delegate, &SquareUp.ResponseSchema.create_shift_response/0}

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v2/labor/shifts"
    })
  end
end
