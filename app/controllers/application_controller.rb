class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  def logged_in?
    session[:account_id] != nil
  end
end
