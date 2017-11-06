defmodule Pg2test.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    # List all child processes to be supervised
    children = [
      # Starts a worker by calling: Pg2test.Worker.start_link(arg)
      # {Pg2test.Worker, arg},
      Pg2test.Worker
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Pg2test.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
