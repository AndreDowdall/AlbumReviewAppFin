ActiveAdmin.register AdminUser do
  permit_params :email, :password, :password_confirmation

  index do
    selectable_column
    id_column
    column :email
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    actions
  end

  filter :email
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs do
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end


member_action :reset_password do
  # Find the user in question
  admin_user = AdminUser.find(params[:id])

  # Call the method (from Devise) which sends them a password reset email
  admin_user.send_reset_password_instructions

  # Redirect back to the user's page with a confirmation
  redirect_to(admin_admin_user_path(admin_user),
    notice: "Password reset email sent to #{admin_user.email}")
end

end
