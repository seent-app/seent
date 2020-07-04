# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :seent,
  ecto_repos: [Seent.Repo]

# Configures the endpoint
config :seent, SeentWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "A0/GXQj0b/8b6vckQUXQJbKCsfUoX56mcES5mCE50CJbN5P7W6CCr7Jsy+vDvQhp",
  render_errors: [view: SeentWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Seent.PubSub,
  live_view: [signing_salt: "dY6vxbqi"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
