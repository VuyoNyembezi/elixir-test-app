defmodule ApplicationName.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      ApplicationName.Repo,
      # Start the Telemetry supervisor
      ApplicationNameWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: ApplicationName.PubSub},
      # Start the Endpoint (http/https)
      ApplicationNameWeb.Endpoint
      # Start a worker by calling: ApplicationName.Worker.start_link(arg)
      # {ApplicationName.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: ApplicationName.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    ApplicationNameWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
