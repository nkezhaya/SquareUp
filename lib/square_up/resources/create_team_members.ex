defmodule SquareUp.CreateTeamMembers do
  import SquareUp.Client, only: [call: 2]

  def bulk(client, params) do
    call(client, %{
      method: :post,
      params: params,
      path: "/v2/team-members/bulk-create"
    })
  end
end
