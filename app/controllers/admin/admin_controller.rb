class Admin::AdminController < ApplicationController
  before_action :authenticate_admin!

  def authenticate_admin!
    unless current_user && current_user.admin?
      redirect_to root_path
    end
  end
end
