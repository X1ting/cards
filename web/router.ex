defmodule Cards.Router do
  use Cards.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  # pipeline :layout do
  #   plug :layout, {Cards.LayoutView, :}

  scope "/", Cards do
    pipe_through :browser # Use the default browser stack

    get "/", CardController, :index
    resources "/cards", CardController
    resources "/users", UserController
    get "/login", UserController, :login
    post "/login", SessionController, :create
  end

  # Other scopes may use custom stacks.
  # scope "/api", Cards do
  #   pipe_through :api
  # end
end
