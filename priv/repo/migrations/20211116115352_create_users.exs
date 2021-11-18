defmodule ApplicationName.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :title, :string
      add :name, :string
      add :surname, :string
      add :age, :integer

      timestamps()
    end
  end
end
