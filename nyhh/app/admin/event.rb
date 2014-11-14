ActiveAdmin.register Event do
   controller do 
    def permitted_params
      params.permit event: [ :event_name, 
      :location, 
      :borough, 
      :start_time, 
      :end_time, 
      :ticket_price, 
      :ticket_add_1, 
      :ticket_add_2, 
      :featured ]
    end
  end
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
