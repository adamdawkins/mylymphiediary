class ApplicationController < ActionController::Base
  helper_method :current_user 
  private 

  def authenticate_user!
    redirect_to new_token_path if current_user.nil?
  end

  def current_user
    User.find(session[:user_id]) unless session[:user_id].nil?
  end

end
