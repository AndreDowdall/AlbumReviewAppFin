ActiveAdmin.register_page "Dashboard" do
    content :title => proc{ I18n.t("active_admin.dashboard") } do
    columns do
      column do
        panel "Models" do
          ul do
            li link_to("Users", admin_users_path)
            li link_to("Admin Users", admin_admin_users_path)
          end
        end
      end
   end
end
end
