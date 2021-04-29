ActiveAdmin.register Album do
  actions :index, :show, :edit, :destroy
  permit_params :title, :description, :band, :year

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :title, :description, :band, :year, :user_id, :genre_id, :album_cover
  #
  # or
  #
  # permit_params do
  #   permitted = [:title, :description, :band, :year, :user_id, :genre_id, :album_cover]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
