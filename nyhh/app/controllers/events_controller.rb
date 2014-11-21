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
    @user = User.all

  end

  def create
   
    # Create a new event
    @event = Event.new(params.require(:event).permit(
      :event_name, 
      :location, 
      :borough, 
      :start_time,
      :end_time => end_time
      # :ticket_price, 
      # :ticket_add_1, 
      # :ticket_add_2, 
      # :featured,
      # :user_id,
      # :avatar,
      # :date,
      # :approved,
      # :parse_params_start,
      # :parse_params_end
      ))
    raise end_time.inspect
    if @event.save
      redirect_to events_path
    else
      redirect_to new_event_path
    end
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    @event.update_attribute(permitted_params)
    if @event.save
      redirect_to admin_root_path
    end
  end

  def permitted_params
     params.require(:event).permit(
      :event_name, 
      :location, 
      :borough, 
      :start_time,
      :end_time,
      :ticket_price, 
      :ticket_add_1, 
      :ticket_add_2, 
      :featured,
      :user_id,
      :avatar,
      :date,
      :approved,
      :parse_params_start,
      :parse_params_end)
    end

    # def start_time
    #  params.permit event: [
    #     :start_time(1).to_i, 
    #     :start_time(2)].to_i, 
    #     :start_time(3)].to_i, 
    #     :start_time(4)].to_i,
    #     :start_time(5)].to_i
    #   ]
    #  raise datetime


    # end

    def end_time

     date = DateTime.new(params[:end_time]['1i'], 
                  params[:end_time]['2i'], 
                  params[:end_time]['3i'], 
                  params[:end_time]['4i'],
                  params[:end_time]['5i'])
raise date.inspect


    end


end
