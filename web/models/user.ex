defmodule Users.User do
  use Users.Web, :model

  schema "users" do
    field :name, :string
    field :username, :string
    field :verified, :boolean
    field :edited_at, :string

    timestamps()
  end
end
