ActiveAdmin.register User do


  index do
    selectable_column
    column :prenom
    column :nom
    column :age
    column :email
    column :permis
    column :docpermis do |user|
      link_to("photopermis" , cl_image_path(user.docpermis), target: :_blank) if user.docpermis.present?
    end
    column :admin
    actions defaults: true do |user|
      link_to 'Valider permis', valider_permis_admin_user_path(user), method: :put unless user.permis?
    end
  end
  member_action :valider_permis, method: :put do
    resource.permis = true
    resource.save!
    redirect_to collection_path, notice: "permis validé"
  end


  ActiveAdmin.register User do
  form do |f|
    f.inputs "Identity" do
      f.input :prenom
      f.input :nom
      f.input :email
      f.input :age
      f.input :permis
      f.input :docpermis
    end
    f.inputs "Admin" do
      f.input :admin
    end
    f.actions
  end

  permit_params :admin, :permis
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
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end

