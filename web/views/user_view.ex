defmodule Users.UserView do
  use Users.Web, :view

  def render("index.json", %{users: users}) do
    %{
      users: Enum.map(users, &user_json/1)
    }
  end

  def render("show.json", %{user: user}) do
    %{user: user_json(user)}
  end

  def user_json(user) do
    %{
      id: user.id,
      name: user.name,
      username: user.username,
      verified: user.verified,
      edited_at: user.edited_at
    }
  end
end
