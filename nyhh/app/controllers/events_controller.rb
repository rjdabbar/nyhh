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
    events = Event.new
  end

  def create
    events = Event.new
  end

  def edit
  end

  def update
  end
end
