defmodule ApiV7Web.Router do
  use ApiV7Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", ApiV7Web do
    pipe_through :api

    get "/index", RequestController, :index
    post "/cadastrar", RequestController, :cadastrar
    post "/buscar/:id", RequestController, :buscar
  end

  if Mix.env() in [:dev, :test] do
    import Phoenix.LiveDashboard.Router

    scope "/" do
      pipe_through [:fetch_session, :protect_from_forgery]
      live_dashboard "/dashboard", metrics: ApiV7Web.Telemetry
    end
  end
end
