defmodule SquareUp.V2.TeamMemberWage do
  import Norm
  import SquareUp.Client, only: [call: 2]
  @spec get(%SquareUp.Client{}, %{id: binary()}) :: SquareUp.Client.response()
  def get(client, params \\ %{}) do
    norm_spec = schema(%{id: spec(is_binary())})

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      path: "/v2/labor/team-member-wages/#{Map.get(params, "id")}"
    })
  end
end
