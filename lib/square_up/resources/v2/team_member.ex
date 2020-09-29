defmodule SquareUp.V2.TeamMember do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec create(SquareUp.Client.t(), %{}, SquareUp.TypeSpecs.create_team_member_request()) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.create_team_member_response())
  def create(client, path_params \\ %{}, params \\ %{}) do
    path_params_spec = schema(%{})
    params_spec = Norm.Delegate.delegate(&SquareUp.NormSchema.create_team_member_request/0)

    response_spec = {:delegate, &SquareUp.ResponseSchema.create_team_member_response/0}

    call(client, %{
      method: :post,
      path_params: path_params,
      params: params,
      path_params_spec: path_params_spec,
      params_spec: params_spec,
      response_spec: response_spec,
      path: "/v2/team-members"
    })
  end

  @spec retrieve(SquareUp.Client.t(), %{required(:team_member_id) => binary()}, %{}) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.retrieve_team_member_response())
  def retrieve(client, path_params \\ %{}, params \\ %{}) do
    path_params_spec = schema(%{team_member_id: spec(is_binary())})
    params_spec = schema(%{})

    response_spec = {:delegate, &SquareUp.ResponseSchema.retrieve_team_member_response/0}

    call(client, %{
      method: :get,
      path_params: path_params,
      params: params,
      path_params_spec: path_params_spec,
      params_spec: params_spec,
      response_spec: response_spec,
      path: "/v2/team-members/{team_member_id}"
    })
  end

  @spec update(
          SquareUp.Client.t(),
          %{required(:team_member_id) => binary()},
          SquareUp.TypeSpecs.update_team_member_request()
        ) :: SquareUp.Client.response(SquareUp.TypeSpecs.update_team_member_response())
  def update(client, path_params \\ %{}, params \\ %{}) do
    path_params_spec = schema(%{team_member_id: spec(is_binary())})
    params_spec = Norm.Delegate.delegate(&SquareUp.NormSchema.update_team_member_request/0)

    response_spec = {:delegate, &SquareUp.ResponseSchema.update_team_member_response/0}

    call(client, %{
      method: :put,
      path_params: path_params,
      params: params,
      path_params_spec: path_params_spec,
      params_spec: params_spec,
      response_spec: response_spec,
      path: "/v2/team-members/{team_member_id}"
    })
  end
end
