class AdminController < ApplicationController
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_action :authenticate_user!
  before_action :verify_admin

  def verify_admin

    if current_user.admin == false
      redirect_to root_path
      flash[:alert]="This section is for admins only"
    end

  end

end
