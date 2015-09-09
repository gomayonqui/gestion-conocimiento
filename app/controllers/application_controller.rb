class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  layout :which_layout
  before_action :authenticate_user!

  def which_layout
    if current_user && current_user.admin?
      'admin'
    else
      'application'
    end
  end

  def after_sign_in_path_for(resource)
    if resource.admin?
      admin_countries_path
    else
      countries_path
    end
  end

end
