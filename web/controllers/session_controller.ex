defmodule Cards.SessionController do
  use Cards.Web, :controller

  alias Cards.User

  def create(conn, %{"user" => user_params}) do
    user = Repo.get_by(User, email: user_params["email"])

    if user == nil do
      conn
      |> put_flash(:info, "User undefined")
      |> redirect(to: card_path(conn, :index))
    end
    condition = user_params["password"] == user.password

    if condition do
      conn
      |> put_flash(:info, "Login success")
      |> redirect(to: card_path(conn, :index))
    end

    unless condition do
      conn
      |> put_flash(:info, "Login failed")
      |> redirect(to: card_path(conn, :index))
    end

  end
end