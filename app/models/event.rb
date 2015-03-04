
class Event < ActiveRecord::Base
	validates :event_name, :location,:borough,:ticket_price,:avatar,:flyer,:description,:start, presence: true
	has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
	has_attached_file :flyer, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
  geocoded_by :location
  after_validation :geocode, :if => :location_changed?
	attr_accessible :event_name, :location, :borough,:ticket_price,:featured,:user_id,:avatar_file_name,:date,:approved,:avatar,:flyer,:description,:latitude,:longitude,:start,:end,:venue,:url




  def self.order_dates
    Event.all.where(approved: "t").sort_by(&:start)
  end

  def self.current_events(events)
    today = Chronic.parse('today')

  def order_dates
    events = Event.all.where(approved: "t")
    ordered_events = []

    events.each do |e|
      e.start = Chronic.parse(e.start)
      ordered_events << e
    end

    ordered_events.sort_by(&:start)


  end

  def self.current_events
    today = Chronic.parse('today')
    events = Event.all.where(approved: "t")


    current = []

    events.each do |e|
      if Chronic.parse(e.start) > today
        current << e
      end
    end

    current


  end

end
