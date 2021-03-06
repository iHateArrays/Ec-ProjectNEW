ActiveAdmin.register Design do


  index title: 'Designs' do
    selectable_column
    column :name
    column :author
    column :description
    column :category

    actions
  end

  form(html: { multipart: true }) do |f|
    f.inputs 'Design Details' do
      f.input :name
      f.input :author
      f.input :description
      f.input :category
      f.input :avatar
    end
    f.actions
  end

  permit_params :category_id, :avatar
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
