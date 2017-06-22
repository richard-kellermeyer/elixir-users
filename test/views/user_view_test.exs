defmodule Users.UserViewTest do
  use Users.ModelCase
  import Users.Factory
  alias Users.UserView

  test "user_json" do
    user = insert(:user)

    rendered_user = UserView.user_json(user)

    assert rendered_user == %{
      id: user.id,
      name: user.name,
      username: user.username,
      verified: user.verified,
      edited_at: user.edited_at
    }
  end

  test "index.json" do
    user = insert(:user)

    rendered_users = UserView.render("index.json", %{users: [user]})

    assert rendered_users == %{
      users: [UserView.user_json(user)]
    }
  end

  test "show.json" do
    user = insert(:user)

    rendered_user = UserView.render("show.json", %{user: user})

    assert rendered_user == %{
      user: UserView.user_json(user)
    }
  end
end
