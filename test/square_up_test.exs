defmodule SquareUpTest do
  use ExUnit.Case
  doctest SquareUp

  @client %SquareUp.Client{
    access_token: "EAAAEKcOaT3HmjOkWqtYZIzkGEfKO_ZwG3Lr3a4sagLJ22mND8SSDB5UCabrp9Ai",
    application_id: "sandbox-sq0idb-shmTb_qGngXnXVBVCTyc7A",
    base_path: "https://connect.squareupsandbox.com"
  }

  test "can list payments" do
    {:ok, _payments} = SquareUp.Payments.list(@client, %{})
  end
end
