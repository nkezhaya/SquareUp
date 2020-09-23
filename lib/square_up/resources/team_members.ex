defmodule SquareUp.TeamMembers do
  import SquareUp.Client, only: [call: 2]

  def search(client, params) do
    call(client, %{
      method: :post,
      params: params,
      path: "/v2/team-members/search"
    })
  end

  def bulk_update(client, params) do
    call(client, %{
      method: :post,
      params: params,
      path: "/v2/team-members/bulk-update"
    })
  end
end
