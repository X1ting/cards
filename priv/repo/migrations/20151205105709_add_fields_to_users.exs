defmodule Cards.Repo.Migrations.AddFieldsToUsers do
  use Ecto.Migration

  def change do
    alter table(:users) do
      add :hash, :string
      add :recovery_hash, :string
      add :username, :string
      remove :nick
    end
  end
end
