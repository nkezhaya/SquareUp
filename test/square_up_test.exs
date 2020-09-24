defmodule SquareUpTest do
  use ExUnit.Case
  doctest SquareUp

  @client %SquareUp.Client{
    access_token: "EAAAEKcOaT3HmjOkWqtYZIzkGEfKO_ZwG3Lr3a4sagLJ22mND8SSDB5UCabrp9Ai",
    application_id: "sandbox-sq0idb-shmTb_qGngXnXVBVCTyc7A",
    base_path: "https://connect.squareupsandbox.com"
  }

  test "can list payments" do
    assert {:ok, _payments} = SquareUp.Payments.list(@client, %{})
  end

  test "rejects an invalid request" do
    assert {:error, _details} = SquareUp.Payment.create(@client, %{}) |> IO.inspect()
  end
end
