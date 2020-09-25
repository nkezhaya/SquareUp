defmodule SquareUp.V2.TeamMember do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec create(%SquareUp.Client{}, SquareUp.Schema.create_team_member_request()) ::
          SquareUp.Client.response()
  def create(client, params \\ %{}) do
    norm_spec = Norm.Delegate.delegate(&SquareUp.Schema.create_team_member_request/0)

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      path: "/v2/team-members"
    })
  end

  @spec retrieve(%SquareUp.Client{}, %{team_member_id: binary()}) :: SquareUp.Client.response()
  def retrieve(client, params \\ %{}) do
    norm_spec = schema(%{team_member_id: spec(is_binary())})

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      path: "/v2/team-members/#{Map.get(params, "team_member_id")}"
    })
  end

  @spec update(%SquareUp.Client{}, %{
          team_member_id: binary(),
          body: SquareUp.Schema.update_team_member_request()
        }) :: SquareUp.Client.response()
  def update(client, params \\ %{}) do
    norm_spec =
      schema(%{
        team_member_id: spec(is_binary()),
        body: Norm.Delegate.delegate(&SquareUp.Schema.update_team_member_request/0)
      })

    call(client, %{
      method: :put,
      params: params,
      spec: norm_spec,
      path: "/v2/team-members/#{Map.get(params, "team_member_id")}"
    })
  end
end
