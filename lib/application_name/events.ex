defmodule ApplicationName.Events do
@moduledoc """
The Events Context

"""
import Ecto.Query, warn: false
alias ApplicationName.Repo
alias ApplicationName.Events.Event



def list_events do
    Repo.all(Event)
end

def get_event!(id), do: Repo.get!(Event, id)

def create_event(attrs \\%{}) do
    %Event{}
    |>Event.changeset(attrs)
    |>Repo.insert()
end



def update_event(%Event{} = event, attrs) do
    event
    |> Event.changeset(attrs)
    |>Repo.update()
end

def delete_event(%Event{} = event) do
    Repo.delete(event)
end


def change_event(%Event{} = event, attrs \\ %{}) do
    Event.changeset(event, attrs)
end


end