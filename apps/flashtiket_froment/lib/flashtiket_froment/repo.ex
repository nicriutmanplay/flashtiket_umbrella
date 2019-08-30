defmodule FlashtiketFroment.Repo do
  use Ecto.Repo,
    otp_app: :flashtiket_froment,
    adapter: Ecto.Adapters.Postgres
end
