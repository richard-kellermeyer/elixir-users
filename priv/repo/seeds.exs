# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Users.Repo.insert!(%Users.SomeModel{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias Users.Repo
alias Users.User
alias FakerElixir, as: Faker

Repo.insert! %User{
  name: Faker.Name.name,
  username: Faker.Internet.user_name,
  verified: Faker.Helper.pick([true, false]),
  edited_at: Faker.Date.backward(1)
}

Repo.insert! %User{
  name: Faker.Name.name,
  username: Faker.Internet.user_name,
  verified: Faker.Helper.pick([true, false]),
  edited_at: Faker.Date.backward(1)
}

Repo.insert! %User{
  name: Faker.Name.name,
  username: Faker.Internet.user_name,
  verified: Faker.Helper.pick([true, false]),
  edited_at: Faker.Date.backward(1)
}
