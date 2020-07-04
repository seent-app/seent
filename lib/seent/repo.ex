defmodule Seent.Repo do
  use Ecto.Repo,
    otp_app: :seent,
    adapter: Ecto.Adapters.Postgres
end
