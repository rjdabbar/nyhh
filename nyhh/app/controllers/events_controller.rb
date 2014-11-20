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
     :end_time,
      :ticket_price, 
      :ticket_add_1, 
      :ticket_add_2, 
      :featured,
<<<<<<< HEAD
      :approved,
      :user_id,
      :avatar,
      :date
      ))
=======
      :approved))
    raise
>>>>>>> dad9997fc3c67f5d60cf770211aa9d98cdae203a
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

    # def parse_params_start params


    #   datetime = DateTime.new(params[:start_time(1i)].to_i, params[:start_time(2i)].to_i, 
    #                     params[:start_time(3i)].to_i, params[:start_time(4i)].to_i,
    #                     params[:start_time(5i)].to_i)



    # end

    # def parse_params_end params

    #   datetime = DateTime.new(params[:end_time(1i)].to_i, params[:end_time(2i)].to_i, 
    #                     params[:end_time(3i)].to_i, params[:end_time(4i)].to_i,
    #                     params[:end_time(5i)].to_i)



    # end


end
