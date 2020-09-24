defmodule SquareUp.V2.TeamMemberWages do
  import Norm
  import SquareUp.Client, only: [call: 2]

  def list(client, params \\ %{}) do
    norm_spec =
      schema(%{
        "team_member_id" => spec(is_binary()),
        "limit" => spec(is_integer()),
        "cursor" => spec(is_binary())
      })

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      path: "/v2/labor/team-member-wages"
    })
  end
end
