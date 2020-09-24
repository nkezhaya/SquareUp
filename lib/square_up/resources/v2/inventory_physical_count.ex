defmodule SquareUp.V2.InventoryPhysicalCount do
  import Norm
  import SquareUp.Client, only: [call: 2]
  @spec retrieve(%SquareUp.Client{}, %{physical_count_id: binary()}) :: SquareUp.Client.response()
  def retrieve(client, params \\ %{}) do
    norm_spec = schema(%{physical_count_id: spec(is_binary())})

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      path: "/v2/inventory/physical-count/#{Map.get(params, "physical_count_id")}"
    })
  end
end
