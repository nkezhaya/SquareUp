defmodule SquareUp.V2.TeamMembers do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec search(SquareUp.Client.t(), %{}, SquareUp.TypeSpecs.search_team_members_request()) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.search_team_members_response())
  def search(client, path_params \\ %{}, params \\ %{}) do
    path_params_spec = schema(%{})
    params_spec = Norm.Delegate.delegate(&SquareUp.NormSchema.search_team_members_request/0)

    response_spec = {:delegate, &SquareUp.ResponseSchema.search_team_members_response/0}

    call(client, %{
      method: :post,
      path_params: path_params,
      params: params,
      path_params_spec: path_params_spec,
      params_spec: params_spec,
      response_spec: response_spec,
      path: "/v2/team-members/search"
    })
  end

  @spec bulk_update(
          SquareUp.Client.t(),
          %{},
          SquareUp.TypeSpecs.bulk_update_team_members_request()
        ) :: SquareUp.Client.response(SquareUp.TypeSpecs.bulk_update_team_members_response())
  def bulk_update(client, path_params \\ %{}, params \\ %{}) do
    path_params_spec = schema(%{})
    params_spec = Norm.Delegate.delegate(&SquareUp.NormSchema.bulk_update_team_members_request/0)

    response_spec = {:delegate, &SquareUp.ResponseSchema.bulk_update_team_members_response/0}

    call(client, %{
      method: :post,
      path_params: path_params,
      params: params,
      path_params_spec: path_params_spec,
      params_spec: params_spec,
      response_spec: response_spec,
      path: "/v2/team-members/bulk-update"
    })
  end
end
