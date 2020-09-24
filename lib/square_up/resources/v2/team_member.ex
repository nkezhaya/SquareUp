defmodule SquareUp.V2.TeamMember do
  import Norm
  import SquareUp.Client, only: [call: 2]

  def create(client, params \\ %{}) do
    norm_spec = spec(SquareUp.Schema.create_team_member_request())

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      path: "/v2/team-members"
    })
  end

  def retrieve(client, params \\ %{}) do
    norm_spec = schema(%{"team_member_id" => spec(is_binary())})

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      path: "/v2/team-members/#{Map.get(params, "team_member_id")}"
    })
  end

  def update(client, params \\ %{}) do
    norm_spec =
      schema(%{
        "team_member_id" => spec(is_binary()),
        "body" => spec(SquareUp.Schema.update_team_member_request())
      })

    call(client, %{
      method: :put,
      params: params,
      spec: norm_spec,
      path: "/v2/team-members/#{Map.get(params, "team_member_id")}"
    })
  end
end
