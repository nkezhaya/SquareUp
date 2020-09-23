defmodule SquareUp.TeamMemberWage do
  import SquareUp.Client, only: [call: 2]

  def get(client, params) do
    call(client, %{
      method: :get,
      params: params,
      path: "/v2/labor/team-member-wages/#{Map.get(params, "id")}"
    })
  end
end
