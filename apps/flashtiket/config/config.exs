# Since configuration is shared in umbrella projects, this file
# should only configure the :flashtiket application itself
# and only for organization purposes. All other config goes to
# the umbrella root.
use Mix.Config

config :flashtiket,
  ecto_repos: [Flashtiket.Repo]

import_config "#{Mix.env()}.exs"
