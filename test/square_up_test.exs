defmodule SquareUpTest do
  use ExUnit.Case
  doctest SquareUp

  @client %SquareUp.Client{
    access_token: "EAAAEKcOaT3HmjOkWqtYZIzkGEfKO_ZwG3Lr3a4sagLJ22mND8SSDB5UCabrp9Ai",
    application_id: "sandbox-sq0idb-shmTb_qGngXnXVBVCTyc7A",
    base_path: "https://connect.squareupsandbox.com"
  }

  test "can list payments" do
    assert {:ok, _payments} = SquareUp.V2.Payments.list(@client)
  end

  test "rejects an invalid request" do
    assert {:error, [%{input: "foo", path: [:amount_money, :amount], spec: "is_integer()"} | _]} =
             SquareUp.V2.Payment.create(@client, %{amount_money: %{amount: "foo"}})
  end

  test "create a payment" do
    idempotency_key = UUID.uuid4()

    {:ok, payment} =
      SquareUp.V2.Payment.create(@client, %{
        source_id: "111",
        idempotency_key: idempotency_key,
        amount_money: %{amount: 3000, currency: "USD"}
      })
  end
end
