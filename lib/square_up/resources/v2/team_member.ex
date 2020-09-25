defmodule SquareUp.V2.TeamMember do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec create(SquareUp.Client.t(), SquareUp.TypeSpecs.create_team_member_request()) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.create_team_member_response())
  def create(client, params \\ %{}) do
    norm_spec = Norm.Delegate.delegate(&SquareUp.NormSchema.create_team_member_request/0)

    response_spec = {:delegate, &SquareUp.ResponseSchema.create_team_member_response/0}

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v2/team-members"
    })
  end

  @spec retrieve(SquareUp.Client.t(), %{team_member_id: binary()}) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.retrieve_team_member_response())
  def retrieve(client, params \\ %{}) do
    norm_spec = schema(%{team_member_id: spec(is_binary())})

    response_spec = {:delegate, &SquareUp.ResponseSchema.retrieve_team_member_response/0}

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v2/team-members/#{Map.get(params, "team_member_id")}"
    })
  end

  @spec update(SquareUp.Client.t(), %{
          team_member_id: binary(),
          body: SquareUp.TypeSpecs.update_team_member_request()
        }) :: SquareUp.Client.response(SquareUp.TypeSpecs.update_team_member_response())
  def update(client, params \\ %{}) do
    norm_spec =
      schema(%{
        team_member_id: spec(is_binary()),
        body: Norm.Delegate.delegate(&SquareUp.NormSchema.update_team_member_request/0)
      })

    response_spec = {:delegate, &SquareUp.ResponseSchema.update_team_member_response/0}

    call(client, %{
      method: :put,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v2/team-members/#{Map.get(params, "team_member_id")}"
    })
  end
end
