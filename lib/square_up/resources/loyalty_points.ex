defmodule SquareUp.LoyaltyPoints do
  import SquareUp.Client, only: [call: 2]

  def calculate(client, params) do
    call(client, %{
      method: :post,
      params: params,
      path: "/v2/loyalty/programs/#{Map.get(params, "program_id")}/calculate"
    })
  end

  def accumulate(client, params) do
    call(client, %{
      method: :post,
      params: params,
      path: "/v2/loyalty/accounts/#{Map.get(params, "account_id")}/accumulate"
    })
  end

  def adjust(client, params) do
    call(client, %{
      method: :post,
      params: params,
      path: "/v2/loyalty/accounts/#{Map.get(params, "account_id")}/adjust"
    })
  end
end
