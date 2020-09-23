defmodule SquareUp.WageSetting do
  import SquareUp.Client, only: [call: 2]

  def retrieve(client, params) do
    call(client, %{
      method: :get,
      params: params,
      path: "/v2/team-members/#{Map.get(params, "team_member_id")}/wage-setting"
    })
  end

  def update(client, params) do
    call(client, %{
      method: :put,
      params: params,
      path: "/v2/team-members/#{Map.get(params, "team_member_id")}/wage-setting"
    })
  end
end
