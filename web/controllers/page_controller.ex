defmodule Cards.PageController do
  use Cards.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
