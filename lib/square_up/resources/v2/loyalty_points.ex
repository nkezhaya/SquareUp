defmodule SquareUp.V2.LoyaltyPoints do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec calculate(
          SquareUp.Client.t(),
          %{required(:program_id) => binary()},
          SquareUp.TypeSpecs.calculate_loyalty_points_request()
        ) :: SquareUp.Client.response(SquareUp.TypeSpecs.calculate_loyalty_points_response())
  def calculate(client, path_params \\ %{}, params \\ %{}) do
    path_params_spec = schema(%{program_id: spec(is_binary())})
    params_spec = Norm.Delegate.delegate(&SquareUp.NormSchema.calculate_loyalty_points_request/0)

    response_spec = {:delegate, &SquareUp.ResponseSchema.calculate_loyalty_points_response/0}

    call(client, %{
      method: :post,
      path_params: path_params,
      params: params,
      path_params_spec: path_params_spec,
      params_spec: params_spec,
      response_spec: response_spec,
      path: "/v2/loyalty/programs/{program_id}/calculate"
    })
  end

  @spec accumulate(
          SquareUp.Client.t(),
          %{required(:account_id) => binary()},
          SquareUp.TypeSpecs.accumulate_loyalty_points_request()
        ) :: SquareUp.Client.response(SquareUp.TypeSpecs.accumulate_loyalty_points_response())
  def accumulate(client, path_params \\ %{}, params \\ %{}) do
    path_params_spec = schema(%{account_id: spec(is_binary())})
    params_spec = Norm.Delegate.delegate(&SquareUp.NormSchema.accumulate_loyalty_points_request/0)

    response_spec = {:delegate, &SquareUp.ResponseSchema.accumulate_loyalty_points_response/0}

    call(client, %{
      method: :post,
      path_params: path_params,
      params: params,
      path_params_spec: path_params_spec,
      params_spec: params_spec,
      response_spec: response_spec,
      path: "/v2/loyalty/accounts/{account_id}/accumulate"
    })
  end

  @spec adjust(
          SquareUp.Client.t(),
          %{required(:account_id) => binary()},
          SquareUp.TypeSpecs.adjust_loyalty_points_request()
        ) :: SquareUp.Client.response(SquareUp.TypeSpecs.adjust_loyalty_points_response())
  def adjust(client, path_params \\ %{}, params \\ %{}) do
    path_params_spec = schema(%{account_id: spec(is_binary())})
    params_spec = Norm.Delegate.delegate(&SquareUp.NormSchema.adjust_loyalty_points_request/0)

    response_spec = {:delegate, &SquareUp.ResponseSchema.adjust_loyalty_points_response/0}

    call(client, %{
      method: :post,
      path_params: path_params,
      params: params,
      path_params_spec: path_params_spec,
      params_spec: params_spec,
      response_spec: response_spec,
      path: "/v2/loyalty/accounts/{account_id}/adjust"
    })
  end
end
