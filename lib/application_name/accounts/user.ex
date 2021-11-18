defmodule ApplicationName.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :age, :integer
    field :name, :string
    field :surname, :string
    field :title, :string

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:title, :name, :surname, :age])
    |> validate_required([:title, :name, :surname, :age])
  end
end
