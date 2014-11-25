require 'chronic'
class EventsController < ApplicationController
  before_action :authenticate_user!
  def home
    events = Event.all
  end

  def index
    today = params[:format]
    if today == '1'
      t = Time.now.to_s
      t = Chronic.parse(t).to_s
      t = t.split
      t = t[0]
      event = Event.where(date: t)
      @event = event.where(approved: 't')
    elsif today == '2'
      t = Chronic.parse('tommorow').to_s
      t = t.split
      t = t[0]
      event = Event.where(date: t) 
      @event = event.where(approved: 't') 
    else 
      @event = Event.where(approved: 't')  
    end
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
    t = Chronic.parse(params[:event][:start]).to_s
    t = t.split
    t = t[0]
    # Create a new event
    @event = Event.new(
      :event_name => params[:event][:event_name], 
      :location => params[:event][:location], 
      :borough => params[:event][:borough],
      :ticket_price => params[:event][:ticket_price], 
      :ticket_add_1 => params[:event][:ticket_add_1], 
      :ticket_add_2 => params[:event][:ticket_add_2], 
      :featured => params[:event][:featured],
      :user_id => params[:event][:user_id],
      :date => t,
      :approved => params[:event][:approved],
      :avatar => params[:event][:avatar],
      :flyer => params[:event][:flyer],
      :description => params[:event][:description],
      :latitude => params[:event][:latitude],
      :longitude => params[:event][:longitude],
      :start => Chronic.parse(params[:event][:start]),
      :end => Chronic.parse(params[:event][:end])
      )

    
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
      :end_time,
      :venue, 
      :url
      )
    end



end
