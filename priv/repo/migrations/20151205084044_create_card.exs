defmodule Cards.Repo.Migrations.CreateCard do
  use Ecto.Migration

  def change do
    create table(:cards) do
      add :body, :text
      add :title, :string
      add :visibility, :integer
      add :views, :integer
      add :author_id, :integer
      add :heap_id, :integer

      timestamps
    end

  end
end
