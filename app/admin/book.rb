ActiveAdmin.register Book do

    form do |f|
    inputs 'Details' do
      input :image
      input :title
      input :description
      input :year
      input :ISBN
      actions
    end

  end

  permit_params :image, :title, :ISBN, :year, :description
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
