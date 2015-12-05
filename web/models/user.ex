defmodule Cards.User do
  use Cards.Web, :model

  schema "users" do
    field :email, :string
    field :password, :string
    field :nick, :string

    timestamps
  end

  @required_fields ~w(email password nick)
  @optional_fields ~w()
  @login_fields ~w(email password)

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end

  def login_set(model, params \\ :empty) do
    model
    |> cast(params, @login_fields, @optional_fields)
  end
end
