class ApplicationController < ActionController::Base

  def authorize_admin
    if !current_user || current_user.admin != true 
      flash[:alert] = "You aren't authorized to visit that page."
      redirect_to '/'
    end
  end
end
