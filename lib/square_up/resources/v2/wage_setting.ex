defmodule SquareUp.V2.WageSetting do
  import Norm
  import SquareUp.Client, only: [call: 2]
  @spec retrieve(%SquareUp.Client{}, %{team_member_id: binary()}) :: SquareUp.Client.response()
  def retrieve(client, params \\ %{}) do
    norm_spec = schema(%{team_member_id: spec(is_binary())})

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      path: "/v2/team-members/#{Map.get(params, "team_member_id")}/wage-setting"
    })
  end

  @spec update(%SquareUp.Client{}, %{
          team_member_id: binary(),
          body: SquareUp.Schema.update_wage_setting_request()
        }) :: SquareUp.Client.response()
  def update(client, params \\ %{}) do
    norm_spec =
      schema(%{
        team_member_id: spec(is_binary()),
        body: Norm.Delegate.delegate(&SquareUp.Schema.update_wage_setting_request/0)
      })

    call(client, %{
      method: :put,
      params: params,
      spec: norm_spec,
      path: "/v2/team-members/#{Map.get(params, "team_member_id")}/wage-setting"
    })
  end
end
