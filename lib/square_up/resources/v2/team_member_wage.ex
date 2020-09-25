defmodule SquareUp.V2.TeamMemberWage do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec get(SquareUp.Client.t(), %{id: binary()}) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.get_team_member_wage_response())
  def get(client, params \\ %{}) do
    norm_spec = schema(%{id: spec(is_binary())})

    response_spec = {:delegate, &SquareUp.ResponseSchema.get_team_member_wage_response/0}

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v2/labor/team-member-wages/#{Map.get(params, "id")}"
    })
  end
end
