defmodule SquareUp.V2.LoyaltyPoints do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec calculate(SquareUp.Client.t(), %{
          program_id: binary(),
          body: SquareUp.TypeSpecs.calculate_loyalty_points_request()
        }) :: SquareUp.Client.response(SquareUp.TypeSpecs.calculate_loyalty_points_response())
  def calculate(client, params \\ %{}) do
    norm_spec =
      schema(%{
        program_id: spec(is_binary()),
        body: Norm.Delegate.delegate(&SquareUp.NormSchema.calculate_loyalty_points_request/0)
      })

    response_spec = {:delegate, &SquareUp.ResponseSchema.calculate_loyalty_points_response/0}

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v2/loyalty/programs/#{Map.get(params, "program_id")}/calculate"
    })
  end

  @spec accumulate(SquareUp.Client.t(), %{
          account_id: binary(),
          body: SquareUp.TypeSpecs.accumulate_loyalty_points_request()
        }) :: SquareUp.Client.response(SquareUp.TypeSpecs.accumulate_loyalty_points_response())
  def accumulate(client, params \\ %{}) do
    norm_spec =
      schema(%{
        account_id: spec(is_binary()),
        body: Norm.Delegate.delegate(&SquareUp.NormSchema.accumulate_loyalty_points_request/0)
      })

    response_spec = {:delegate, &SquareUp.ResponseSchema.accumulate_loyalty_points_response/0}

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v2/loyalty/accounts/#{Map.get(params, "account_id")}/accumulate"
    })
  end

  @spec adjust(SquareUp.Client.t(), %{
          account_id: binary(),
          body: SquareUp.TypeSpecs.adjust_loyalty_points_request()
        }) :: SquareUp.Client.response(SquareUp.TypeSpecs.adjust_loyalty_points_response())
  def adjust(client, params \\ %{}) do
    norm_spec =
      schema(%{
        account_id: spec(is_binary()),
        body: Norm.Delegate.delegate(&SquareUp.NormSchema.adjust_loyalty_points_request/0)
      })

    response_spec = {:delegate, &SquareUp.ResponseSchema.adjust_loyalty_points_response/0}

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      response_spec: response_spec,
      path: "/v2/loyalty/accounts/#{Map.get(params, "account_id")}/adjust"
    })
  end
end
