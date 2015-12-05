defmodule Cards.Router do
  use Addict.RoutesHelper
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
    addict :routes
    pipe_through :browser # Use the default browser stack

    get "/", CardController, :index
    resources "/cards", CardController
    resources "/users", UserController
  end

  # Other scopes may use custom stacks.
  # scope "/api", Cards do
  #   pipe_through :api
  # end
end
