# Since configuration is shared in umbrella projects, this file
# should only configure the :flashtiket application itself
# and only for organization purposes. All other config goes to
# the umbrella root.
use Mix.Config

# Configure your database
config :flashtiket, Flashtiket.Repo,
  username: "postgres",
  password: "postgres",
  database: "flashtiket_dev",
  hostname: "localhost",
  pool_size: 10
