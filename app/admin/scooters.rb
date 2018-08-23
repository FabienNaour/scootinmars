ActiveAdmin.register Scooter do

  # See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
  index do
    selectable_column
    column :marque
    column :modele
    column :annee
    column :kilometrage
    column :categorie
    column :permis
    column :disponible
    column :prix
    column :url
    actions
  end
end

  ActiveAdmin.register Scooter do
  form do |f|
    f.inputs "Identity" do
      f.input :marque
      f.input :modele
      f.input :annee
      f.input :kilometrage
      f.input :categorie
      f.input :permis
      f.input :disponible
      f.input :prix
      f.input :url
    end
    f.actions
  end

  permit_params :marque,:modele, :annee,:kilometrage, :categorie, :permis,:disponible,:prix,:url
end
