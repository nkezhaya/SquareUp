defmodule SquareUp.V2.Invoice do
  import Norm
  import SquareUp.Client, only: [call: 2]

  @spec create(SquareUp.Client.t(), %{}, SquareUp.TypeSpecs.create_invoice_request(), %{}) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.create_invoice_response())
  def create(client, path_params \\ %{}, params \\ %{}, query_params \\ %{}) do
    path_params_spec = schema(%{})
    params_spec = Norm.Delegate.delegate(&SquareUp.NormSchema.create_invoice_request/0)
    query_params_spec = schema(%{})

    response_spec = {:delegate, &SquareUp.ResponseSchema.create_invoice_response/0}

    call(client, %{
      method: :post,
      path_params: path_params,
      params: params,
      query_params: query_params,
      path_params_spec: path_params_spec,
      params_spec: params_spec,
      query_params_spec: query_params_spec,
      response_spec: response_spec,
      path: "/v2/invoices"
    })
  end

  @spec publish(
          SquareUp.Client.t(),
          %{required(:invoice_id) => binary()},
          SquareUp.TypeSpecs.publish_invoice_request(),
          %{}
        ) :: SquareUp.Client.response(SquareUp.TypeSpecs.publish_invoice_response())
  def publish(client, path_params \\ %{}, params \\ %{}, query_params \\ %{}) do
    path_params_spec = schema(%{invoice_id: spec(is_binary())})
    params_spec = Norm.Delegate.delegate(&SquareUp.NormSchema.publish_invoice_request/0)
    query_params_spec = schema(%{})

    response_spec = {:delegate, &SquareUp.ResponseSchema.publish_invoice_response/0}

    call(client, %{
      method: :post,
      path_params: path_params,
      params: params,
      query_params: query_params,
      path_params_spec: path_params_spec,
      params_spec: params_spec,
      query_params_spec: query_params_spec,
      response_spec: response_spec,
      path: "/v2/invoices/{invoice_id}/publish"
    })
  end

  @spec delete(SquareUp.Client.t(), %{required(:invoice_id) => binary()}, %{}, %{
          optional(:version) => integer()
        }) :: SquareUp.Client.response(SquareUp.TypeSpecs.delete_invoice_response())
  def delete(client, path_params \\ %{}, params \\ %{}, query_params \\ %{}) do
    path_params_spec = schema(%{invoice_id: spec(is_binary())})
    params_spec = schema(%{})
    query_params_spec = schema(%{version: spec(is_integer())})

    response_spec = {:delegate, &SquareUp.ResponseSchema.delete_invoice_response/0}

    call(client, %{
      method: :delete,
      path_params: path_params,
      params: params,
      query_params: query_params,
      path_params_spec: path_params_spec,
      params_spec: params_spec,
      query_params_spec: query_params_spec,
      response_spec: response_spec,
      path: "/v2/invoices/{invoice_id}"
    })
  end

  @spec get(SquareUp.Client.t(), %{required(:invoice_id) => binary()}, %{}, %{}) ::
          SquareUp.Client.response(SquareUp.TypeSpecs.get_invoice_response())
  def get(client, path_params \\ %{}, params \\ %{}, query_params \\ %{}) do
    path_params_spec = schema(%{invoice_id: spec(is_binary())})
    params_spec = schema(%{})
    query_params_spec = schema(%{})

    response_spec = {:delegate, &SquareUp.ResponseSchema.get_invoice_response/0}

    call(client, %{
      method: :get,
      path_params: path_params,
      params: params,
      query_params: query_params,
      path_params_spec: path_params_spec,
      params_spec: params_spec,
      query_params_spec: query_params_spec,
      response_spec: response_spec,
      path: "/v2/invoices/{invoice_id}"
    })
  end

  @spec update(
          SquareUp.Client.t(),
          %{required(:invoice_id) => binary()},
          SquareUp.TypeSpecs.update_invoice_request(),
          %{}
        ) :: SquareUp.Client.response(SquareUp.TypeSpecs.update_invoice_response())
  def update(client, path_params \\ %{}, params \\ %{}, query_params \\ %{}) do
    path_params_spec = schema(%{invoice_id: spec(is_binary())})
    params_spec = Norm.Delegate.delegate(&SquareUp.NormSchema.update_invoice_request/0)
    query_params_spec = schema(%{})

    response_spec = {:delegate, &SquareUp.ResponseSchema.update_invoice_response/0}

    call(client, %{
      method: :put,
      path_params: path_params,
      params: params,
      query_params: query_params,
      path_params_spec: path_params_spec,
      params_spec: params_spec,
      query_params_spec: query_params_spec,
      response_spec: response_spec,
      path: "/v2/invoices/{invoice_id}"
    })
  end

  @spec cancel(
          SquareUp.Client.t(),
          %{required(:invoice_id) => binary()},
          SquareUp.TypeSpecs.cancel_invoice_request(),
          %{}
        ) :: SquareUp.Client.response(SquareUp.TypeSpecs.cancel_invoice_response())
  def cancel(client, path_params \\ %{}, params \\ %{}, query_params \\ %{}) do
    path_params_spec = schema(%{invoice_id: spec(is_binary())})
    params_spec = Norm.Delegate.delegate(&SquareUp.NormSchema.cancel_invoice_request/0)
    query_params_spec = schema(%{})

    response_spec = {:delegate, &SquareUp.ResponseSchema.cancel_invoice_response/0}

    call(client, %{
      method: :post,
      path_params: path_params,
      params: params,
      query_params: query_params,
      path_params_spec: path_params_spec,
      params_spec: params_spec,
      query_params_spec: query_params_spec,
      response_spec: response_spec,
      path: "/v2/invoices/{invoice_id}/cancel"
    })
  end
end
