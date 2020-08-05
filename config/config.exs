# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :api_v7,
  ecto_repos: [ApiV7.Repo]

# Configures the endpoint
config :api_v7, ApiV7Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "VL10HW0H2Bi8TlCXcu6ECaH+9OQtw9TobnWKS97/+H/jj6m5cJ3NVL541KYegO4X",
  render_errors: [view: ApiV7Web.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: ApiV7.PubSub,
  live_view: [signing_salt: "U/YUmamE"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
