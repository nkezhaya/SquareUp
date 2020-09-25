defmodule SquareUp.V2.TeamMemberWages do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec list(SquareUp.Client.t(), %{team_member_id: binary(), limit: integer(), cursor: binary()}) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.list_team_member_wages_response())
  def list(client, params \\ %{}) do
    norm_spec =
      schema(%{
        team_member_id: spec(is_binary()),
        limit: spec(is_integer()),
        cursor: spec(is_binary())
      })

    response_spec = {:delegate, &SquareUp.ResponseSchema.list_team_member_wages_response/0}

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v2/labor/team-member-wages"
    })
  end
end
