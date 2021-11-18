defmodule ApplicationName.Events.Event do
use Ecto.Schema
import Ecto.Changeset

schema "events" do
field :title, :string
field :location, :string
field :date, :utc_datetime
field :discription, :string

timestamps()
end

def changeset(event, attrs) do
event
|> cast(attrs,[:title, :location, :date, :discription])
|>validate_required([:title, :location, :date, :discription])
|>unique_constraint([:title, :location, :date, :discription])
end


end