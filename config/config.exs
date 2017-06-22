# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :users,
  ecto_repos: [Users.Repo]

# Configures the endpoint
config :users, Users.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "BRasrfBgVCw4mIyFG0OqfCSc1cTOP8VTngr2Fu0fN95KVdXoxOnc3QJccbFfU7lw",
  render_errors: [view: Users.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Users.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
