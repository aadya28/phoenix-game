defmodule Hangman.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      HangmanWeb.Telemetry,
      {DNSCluster, query: Application.get_env(:hangman, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: Hangman.PubSub},
      # Start the Finch HTTP client for sending emails
      {Finch, name: Hangman.Finch},
      # Start a worker by calling: Hangman.Worker.start_link(arg)
      # {Hangman.Worker, arg},
      # Start to serve requests, typically the last entry
      HangmanWeb.Endpoint
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Hangman.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    HangmanWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end