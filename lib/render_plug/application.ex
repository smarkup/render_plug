defmodule RenderPlug.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application
  require Logger

  @impl true
  def start(_type, _args) do
    children = [
      {Plug.Cowboy, scheme: :http, plug: RenderPlug, options: [port: 4000]}
    ]

    opts = [strategy: :one_for_one, name: RenderPlug.Supervisor]

    Logger.info("Starting application...")

    Supervisor.start_link(children, opts)
  end
end
