defmodule SquareUp.V2.TeamMembers do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec search(%SquareUp.Client{}, SquareUp.Schema.search_team_members_request()) ::
          SquareUp.Client.response()
  def search(client, params \\ %{}) do
    norm_spec = Norm.Delegate.delegate(&SquareUp.Schema.search_team_members_request/0)

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      path: "/v2/team-members/search"
    })
  end

  @spec bulk_update(%SquareUp.Client{}, SquareUp.Schema.bulk_update_team_members_request()) ::
          SquareUp.Client.response()
  def bulk_update(client, params \\ %{}) do
    norm_spec = Norm.Delegate.delegate(&SquareUp.Schema.bulk_update_team_members_request/0)

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      path: "/v2/team-members/bulk-update"
    })
  end
end
