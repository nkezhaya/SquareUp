defmodule SquareUp.V2.LoyaltyPrograms do
  import Norm
  import SquareUp.Client, only: [call: 2]

  def list(client, params) do
    norm_spec = schema(%{})

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      path: "/v2/loyalty/programs"
    })
  end
end
