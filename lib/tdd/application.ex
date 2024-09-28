defmodule Tdd.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      TddWeb.Telemetry,
      Tdd.Repo,
      {DNSCluster, query: Application.get_env(:tdd, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: Tdd.PubSub},
      # Start the Finch HTTP client for sending emails
      {Finch, name: Tdd.Finch},
      # Start a worker by calling: Tdd.Worker.start_link(arg)
      # {Tdd.Worker, arg},
      # Start to serve requests, typically the last entry
      TddWeb.Endpoint
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Tdd.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    TddWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
