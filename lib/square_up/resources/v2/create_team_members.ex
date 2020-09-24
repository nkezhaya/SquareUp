defmodule SquareUp.V2.CreateTeamMembers do
  import Norm
  import SquareUp.Client, only: [call: 2]

  def bulk(client, params) do
    norm_spec = spec(SquareUp.Schema.bulk_create_team_members_request())

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      path: "/v2/team-members/bulk-create"
    })
  end
end
