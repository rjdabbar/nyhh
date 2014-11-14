class EventsController < ApplicationController
  def home
    events = Event.all
  end

  def index
    @event = Event.all
  end

  def show
    events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    # Create a new event
    @event = Event.new(params.require(:event).permit(
      :event_name, 
      :location, 
      :borough, 
      :start_time, 
      :end_time, 
      :ticket_price, 
      :ticket_add_1, 
      :ticket_add_2, 
      :featured,
      :approved))
    if @event.save
      redirect_to events_path
    else
      redirect_to new_event_path
    end
  end

  def edit
    raise
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    raise @event.inspect
    @event.update_attribute(permitted_params)
    if @event.save
      redirect_to admin_root_path
    end
  end

  def permitted_params
      params.permit event: [ :event_name, 
      :location, 
      :borough, 
      :start_time, 
      :end_time, 
      :ticket_price, 
      :ticket_add_1, 
      :ticket_add_2, 
      :featured,
      :approved ]
    end
end
