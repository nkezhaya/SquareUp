defmodule SquareUp.V2.WageSetting do
  import Norm
  import SquareUp.Client, only: [call: 2]

  def retrieve(client, params) do
    norm_spec = schema(%{"team_member_id" => spec(is_binary())})

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      path: "/v2/team-members/#{Map.get(params, "team_member_id")}/wage-setting"
    })
  end

  def update(client, params) do
    norm_spec =
      schema(%{
        "team_member_id" => spec(is_binary()),
        "body" => spec(SquareUp.Schema.update_wage_setting_request())
      })

    call(client, %{
      method: :put,
      params: params,
      spec: norm_spec,
      path: "/v2/team-members/#{Map.get(params, "team_member_id")}/wage-setting"
    })
  end
end
