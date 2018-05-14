ActiveAdmin.setup do |config|


  config.site_title = "Newspicks"

  config.current_user_method = :current_user

  config.logout_link_path = :destroy_user_session_path

  config.batch_actions = true


  config.localize_format = :long


end
