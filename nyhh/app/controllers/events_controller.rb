class EventsController < ApplicationController
  def home
    events = Event.all
  end

  def index
    events = Event.all
  end

  def show
    events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    # Create a new event
    @event = Event.new(params.require(:event).permit(:event_name))
    if @event.save
      redirect_to events_path
    else
      redirect_to new_event_path
    end
  end

  def edit
  end

  def update
  end
end
