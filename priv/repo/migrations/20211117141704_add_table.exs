defmodule ApplicationName.Repo.Migrations.AddTable do
  use Ecto.Migration

  def change do
    alter table (:events) do
      add :title, :string, size: 50
      add :location, :string, size: 50
      add :date, :utc_datetime
      add :description, :string, size:1000
      timestamps
    end

  end
end
