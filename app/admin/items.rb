ActiveAdmin.register Item do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #

  permit_params :name, :price, :description, :image, :category_id, :user_id

  remove_filter :image_attachment;
  remove_filter :image_blob;
  remove_filter :category;
  remove_filter :user;
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :price, :description]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  form do |f|
    f.inputs do
      f.input :name
      f.input :price
      f.input :description
      f.input :category ,include_blank: false, allow_blank: false
      f.input :user ,include_blank: false, allow_blank: false
      f.input :image, as: :file
    end
    f.actions
  end

  
end
