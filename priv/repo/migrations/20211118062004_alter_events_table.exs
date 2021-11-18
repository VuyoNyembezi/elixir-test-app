defmodule ApplicationName.Repo.Migrations.AlterEventsTable do
  use Ecto.Migration

  def change do
    alter table(:events) do
      add :discription, :string, size: 1000
    end
  end
end
