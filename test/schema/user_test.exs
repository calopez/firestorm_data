defmodule FirestormData.UserTest do
  alias FirestormData.{User, Repo}
  use ExUnit.Case

  # We set our test adapter to use the sandbox. This allows us to checkout
  # connections in our tests from a sandbox, so concurrent tests won't step on
  # one another and so they're automatically cleaned up after each test.
  setup do
    :ok = Ecto.Adapters.SQL.Sandbox.checkout(Repo)
  end

  test "Creating a user" do
    carlos = %User{name: "Carlos Andres"}
    assert {:ok, _} = Repo.insert carlos
  end

end

