ActiveAdmin.register Event do
    
    form do |f|
      f.select :approved, options_for_select([["Select One", ""], "pending", "f", "t"]), :class => 'genForm_dropBox'
      f.input :event_name 
      f.input :location 
      f.input :borough
      f.input :ticket_price
      f.input :featured
      f.input :user_id
      f.input :date
      f.input :avatar
      f.input :flyer
      f.input :description
      f.input :latitude
      f.input :longitude
      f.input :start
      f.input :end
      f.input :venue
      f.input :url
      f.submit
    end

  #  controller do 
  #   def permitted_params
  #     params.permit event: [ :event_name 
  #     :location, 
  #     :borough, 
  #     :start_time, 
  #     :end_time, 
  #     :ticket_price, 
  #     :ticket_add_1, 
  #     :ticket_add_2, 
  #     :featured,
  #     :approved,
  #     :start,
  #     :end ]
  #   end
  # end

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end


end
