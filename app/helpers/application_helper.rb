module ApplicationHelper

  def logged_in?
    session[:account_id] != nil
  end
  
end
