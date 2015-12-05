defmodule Cards.Card do
  use Cards.Web, :model

  schema "cards" do
    field :body, :string
    field :title, :string
    field :visibility, :integer
    field :views, :integer
    field :author_id, :integer
    field :heap_id, :integer

    timestamps
  end

  @required_fields ~w(body title visibility views author_id heap_id)
  @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end
