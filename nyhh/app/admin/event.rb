ActiveAdmin.register Event do
  form do |f|
    f.input :event_name
    f.input :location
    f.input :borough
    f.input :ticket_price
    f.select :approved, options_for_select([["Select One", ""], "Pending", "Accepted", "Rejected"]), :class => 'genForm_dropBox'
    f.input :ticket_add_1
    f.input :ticket_add_2
    f.input :featured
    f.input :user_id
    f.input :date
    f.input :avatar
    f.input :flyer
    f.input :description
    f.input :latitude
    f.input :longitude
    f.input :venue
    f.input :url
    f.input :start
    f.input :end
    f.submit 'submit'
  end
end


# :event_name => params[:event][:event_name], 
#       :location => params[:event][:location], 
#       :borough => params[:event][:borough],
#       :ticket_price => params[:event][:ticket_price], 
#       :ticket_add_1 => params[:event][:ticket_add_1], 
#       :ticket_add_2 => params[:event][:ticket_add_2], 
#       :featured => params[:event][:featured],
#       :user_id => params[:event][:user_id],
#       :date => t,
#       :approved => params[:event][:approved],
#       :avatar => params[:event][:avatar],
#       :flyer => params[:event][:flyer],
#       :description => params[:event][:description],
#       :latitude => params[:event][:latitude],
#       :longitude => params[:event][:longitude],
#       :venue => params[:event][:venue],
#       :url => params[:event][:url],
#       :start => Chronic.parse(params[:event][:start]),
#       :end => Chronic.parse(params[:event][:end]),
#       :venue => params[:event][:venue],
#       :url => params[:event][:url]