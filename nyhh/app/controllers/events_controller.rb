require 'chronic'
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
      :ticket_price, 
      :ticket_add_1, 
      :ticket_add_2, 
      :featured,
      :user_id,
      :avatar_file_name,
      :date,
      :approved,
      :avatar,
      :flyer,
      :description,
      :latitude,
      :longitude,
      :start,
      :end
      ))
    
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
      :avatar_file_name,
      :date,
      :approved,
      :avatar_content_type,
      :avatar_file_size,
      :avatar_updated_at,
      :flyer_file_name,
      :flyer_file_size,
      :flyer_content_type,
      :flyer_updated_at,
      :description,
      :latitude,
      :longitude,
      :start_time,
      :end_time
      )
    end



end
