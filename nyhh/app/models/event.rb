class Event < ActiveRecord::Base
<<<<<<< HEAD
	has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
=======
  attr_accessible :location, :latitude, :longitude

  geocoded_by :location
  after_validation :geocode, :if => :location_changed?





>>>>>>> dad9997fc3c67f5d60cf770211aa9d98cdae203a
end
