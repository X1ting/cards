defmodule Cards.CardTest do
  use Cards.ModelCase

  alias Cards.Card

  @valid_attrs %{author_id: 42, body: "some content", heap_id: 42, title: "some content", views: 42, visibility: 42}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Card.changeset(%Card{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Card.changeset(%Card{}, @invalid_attrs)
    refute changeset.valid?
  end
end
