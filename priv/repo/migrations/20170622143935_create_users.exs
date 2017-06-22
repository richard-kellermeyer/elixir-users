defmodule Users.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :name, :string
      add :username, :string
      add :verified, :boolean
      add :edited_at, :datetime

      timestamps
    end
  end
end
