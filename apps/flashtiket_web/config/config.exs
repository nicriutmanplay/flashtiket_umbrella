# Since configuration is shared in umbrella projects, this file
# should only configure the :flashtiket_web application itself
# and only for organization purposes. All other config goes to
# the umbrella root.
use Mix.Config

# General application configuration
config :flashtiket_web,
  ecto_repos: [Flashtiket.Repo],
  generators: [context_app: :flashtiket]

# Configures the endpoint
config :flashtiket_web, FlashtiketWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "h9lsMjuiOB412E9jelsdcKiVxL4BsNwhuM/vxrXOygu98NJVqxIJkLgshrvMVXfk",
  render_errors: [view: FlashtiketWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: FlashtiketWeb.PubSub, adapter: Phoenix.PubSub.PG2]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
