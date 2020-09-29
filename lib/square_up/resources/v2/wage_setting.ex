defmodule SquareUp.V2.WageSetting do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec retrieve(SquareUp.Client.t(), %{required(:team_member_id) => binary()}, %{}) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.retrieve_wage_setting_response())
  def retrieve(client, path_params \\ %{}, params \\ %{}) do
    path_params_spec = schema(%{team_member_id: spec(is_binary())})
    params_spec = schema(%{})

    response_spec = {:delegate, &SquareUp.ResponseSchema.retrieve_wage_setting_response/0}

    call(client, %{
      method: :get,
      path_params: path_params,
      params: params,
      path_params_spec: path_params_spec,
      params_spec: params_spec,
      response_spec: response_spec,
      path: "/v2/team-members/{team_member_id}/wage-setting"
    })
  end

  @spec update(
          SquareUp.Client.t(),
          %{required(:team_member_id) => binary()},
          SquareUp.TypeSpecs.update_wage_setting_request()
        ) :: SquareUp.Client.response(SquareUp.TypeSpecs.update_wage_setting_response())
  def update(client, path_params \\ %{}, params \\ %{}) do
    path_params_spec = schema(%{team_member_id: spec(is_binary())})
    params_spec = Norm.Delegate.delegate(&SquareUp.NormSchema.update_wage_setting_request/0)

    response_spec = {:delegate, &SquareUp.ResponseSchema.update_wage_setting_response/0}

    call(client, %{
      method: :put,
      path_params: path_params,
      params: params,
      path_params_spec: path_params_spec,
      params_spec: params_spec,
      response_spec: response_spec,
      path: "/v2/team-members/{team_member_id}/wage-setting"
    })
  end
end
