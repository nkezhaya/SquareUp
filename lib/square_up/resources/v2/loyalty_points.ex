defmodule SquareUp.V2.LoyaltyPoints do
  import Norm
  import SquareUp.Client, only: [call: 2]

  def calculate(client, params) do
    norm_spec =
      schema(%{
        "program_id" => spec(is_binary()),
        "body" => spec(SquareUp.Schema.calculate_loyalty_points_request())
      })

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      path: "/v2/loyalty/programs/#{Map.get(params, "program_id")}/calculate"
    })
  end

  def accumulate(client, params) do
    norm_spec =
      schema(%{
        "account_id" => spec(is_binary()),
        "body" => spec(SquareUp.Schema.accumulate_loyalty_points_request())
      })

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      path: "/v2/loyalty/accounts/#{Map.get(params, "account_id")}/accumulate"
    })
  end

  def adjust(client, params) do
    norm_spec =
      schema(%{
        "account_id" => spec(is_binary()),
        "body" => spec(SquareUp.Schema.adjust_loyalty_points_request())
      })

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      path: "/v2/loyalty/accounts/#{Map.get(params, "account_id")}/adjust"
    })
  end
end
