class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def logged_in?
    if Account.where(id: session[:account_id])[0]
      true
    else
      false
    end
  end

  def login
    unless logged_in?
      redirect_to login_path
    end
  end

end
