defmodule Users.Repo.Migrations.ChangeUserDates do
  use Ecto.Migration

  def change do
    alter table(:users) do
      modify :edited_at, :string
    end
  end
end
