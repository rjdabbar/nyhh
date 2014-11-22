class Event < ActiveRecord::Base
	has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
  attr_accessible :event_name, :location, :borough, :start,:end,:ticket_price, :ticket_add_1, :ticket_add_2, :featured,:user_id,:avatar_file_name,:date,:approved,:avatar_content_type,:avatar_file_size,:avatar_updated_at,:flyer_file_name,:flyer_file_size,:flyer_content_type,:flyer_updated_at,:description,:latitude,:longitude,:start_time,:end_time
  geocoded_by :location
  after_validation :geocode, :if => :location_changed?


end
