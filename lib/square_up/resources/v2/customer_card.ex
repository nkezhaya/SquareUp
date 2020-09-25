defmodule SquareUp.V2.CustomerCard do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec delete(SquareUp.Client.t(), %{customer_id: binary(), card_id: binary()}, %{}) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.delete_customer_card_response())
  def delete(client, path_params \\ %{}, params \\ %{}) do
    path_params_spec = schema(%{customer_id: spec(is_binary()), card_id: spec(is_binary())})
    params_spec = schema(%{})

    response_spec = {:delegate, &SquareUp.ResponseSchema.delete_customer_card_response/0}

    call(client, %{
      method: :delete,
      path_params: path_params,
      params: params,
      path_params_spec: path_params_spec,
      params_spec: params_spec,
      response_spec: response_spec,
      path: "/v2/customers/{customer_id}/cards/{card_id}"
    })
  end

  @spec create(
          SquareUp.Client.t(),
          %{customer_id: binary()},
          SquareUp.TypeSpecs.create_customer_card_request()
        ) :: SquareUp.Client.response(SquareUp.TypeSpecs.create_customer_card_response())
  def create(client, path_params \\ %{}, params \\ %{}) do
    path_params_spec = schema(%{customer_id: spec(is_binary())})
    params_spec = Norm.Delegate.delegate(&SquareUp.NormSchema.create_customer_card_request/0)

    response_spec = {:delegate, &SquareUp.ResponseSchema.create_customer_card_response/0}

    call(client, %{
      method: :post,
      path_params: path_params,
      params: params,
      path_params_spec: path_params_spec,
      params_spec: params_spec,
      response_spec: response_spec,
      path: "/v2/customers/{customer_id}/cards"
    })
  end
end
