# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :graphQL,
  ecto_repos: [GraphQL.Repo]

# Configures the endpoint
config :graphQL, GraphQL.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "aJEI7P4oZWPWhzzYoGW/sYqB0wCJ24wnjG7x4p+ZfSBcw7Poj0G0FfOfBhSddhpp",
  render_errors: [view: GraphQL.ErrorView, accepts: ~w(html json)],
  pubsub: [name: GraphQL.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
