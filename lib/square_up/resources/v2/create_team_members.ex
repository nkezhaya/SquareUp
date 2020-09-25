defmodule SquareUp.V2.CreateTeamMembers do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec bulk(SquareUp.Client.t(), SquareUp.TypeSpecs.bulk_create_team_members_request()) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.bulk_create_team_members_response())
  def bulk(client, params \\ %{}) do
    norm_spec = Norm.Delegate.delegate(&SquareUp.NormSchema.bulk_create_team_members_request/0)

    response_spec = {:delegate, &SquareUp.ResponseSchema.bulk_create_team_members_response/0}

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v2/team-members/bulk-create"
    })
  end
end
