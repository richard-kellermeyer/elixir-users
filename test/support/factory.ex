defmodule Users.Factory do
  use ExMachina.Ecto, repo: Users.Repo

  def user_factory do
    %Users.User{
      id: 1234,
      name: "John Doe",
      username: "JDoe",
      verified: nil,
      edited_at: nil
    }
  end
end
