defmodule ApplicationName.Repo do
  use Ecto.Repo,
    otp_app: :application_name,
    adapter: Ecto.Adapters.Postgres
end
