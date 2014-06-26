ActiveAdmin.register Squeeze do

  
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  permit_params do
   permitted = [:title, :content, :publish, :user_id]
  #  permitted << :other if resource.something?
   permitted
  end

  #  index do
  #   selectable_column
  #   column :title
  #   column :content => proc {} 
  #   actions
  # end

  
end
