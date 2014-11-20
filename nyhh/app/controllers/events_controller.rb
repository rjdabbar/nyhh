class EventsController < ApplicationController
  def home
    events = Event.all
  end

  def index
    @event = Event.all
  end

  def show

    @event = Event.find(params[:id])
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
      parse_params_start(params), 
      parse_params_end(params), 
      :ticket_price, 
      :ticket_add_1, 
      :ticket_add_2, 
      :featured,
      :approved))
    raise
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

    def parse_params_start params

      datetime = Time.new(params["start_time(1i)"].to_i, params["start_time(2i)"].to_i, 
                        params["start_time(3i)"].to_i, params["start_time(4i)"].to_i,
                        params["start_time(5i)"].to_i)

      datetime.to_sym


    end

    def parse_params_end params

      datetime = Time.new(params["end_time(1i)"].to_i, params["end_time(2i)"].to_i, 
                        params["end_time(3i)"].to_i, params["end_time(4i)"].to_i,
                        params["end_time(5i)"].to_i)

      datetime.to_sym


    end


end
