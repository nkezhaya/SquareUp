defmodule SquareUp.TeamMember do
  import SquareUp.Client, only: [call: 2]

  def create(client, params) do
    call(client, %{
      method: :post,
      params: params,
      path: "/v2/team-members"
    })
  end

  def retrieve(client, params) do
    call(client, %{
      method: :get,
      params: params,
      path: "/v2/team-members/#{Map.get(params, "team_member_id")}"
    })
  end

  def update(client, params) do
    call(client, %{
      method: :put,
      params: params,
      path: "/v2/team-members/#{Map.get(params, "team_member_id")}"
    })
  end
end
