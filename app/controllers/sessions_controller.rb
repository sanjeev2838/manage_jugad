class SessionsController < Devise::SessionsController
    protected
    def after_sign_in_path_for(resource)
    dashboard_index_path
  end
end