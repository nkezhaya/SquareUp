defmodule SquareUp.V2.DeviceCodes do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec list(SquareUp.Client.t(), %{}, %{
          optional(:cursor) => binary(),
          optional(:location_id) => binary(),
          optional(:product_type) => binary()
        }) :: SquareUp.Client.response(SquareUp.TypeSpecs.list_device_codes_response())
  def list(client, path_params \\ %{}, params \\ %{}) do
    path_params_spec = schema(%{})

    params_spec =
      schema(%{
        cursor: spec(is_binary()),
        location_id: spec(is_binary()),
        product_type: spec(is_binary())
      })

    response_spec = {:delegate, &SquareUp.ResponseSchema.list_device_codes_response/0}

    call(client, %{
      method: :get,
      path_params: path_params,
      params: params,
      path_params_spec: path_params_spec,
      params_spec: params_spec,
      response_spec: response_spec,
      path: "/v2/devices/codes"
    })
  end
end
