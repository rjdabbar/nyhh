class Event < ActiveRecord::Base
  attr_accessible :location, :latitude, :longitude

  geocoded_by :location
  after_validation :geocode, :if => :location_changed?





end
