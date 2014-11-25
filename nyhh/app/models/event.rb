
class Event < ActiveRecord::Base
	# validates :event_name, :location, :borough,:ticket_price, :ticket_add_1, :ticket_add_2, :featured,:user_id,:avatar_file_name,:date,:approved,:avatar,:flyer,:description,:latitude,:longitude,:start, :end,  presence: true
	has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
	has_attached_file :flyer, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
  geocoded_by :location
  after_validation :geocode, :if => :location_changed?
	attr_accessible :event_name, :location, :borough,:ticket_price, :featured,:user_id,:avatar_file_name,:date,:approved,:avatar,:flyer,:description,:latitude,:longitude,:start,:end


end
