class WelcomeController < ApplicationController

  def index
    if logged_in?
      @account = Account.find(session[:account_id])
      @listings = Listing.all.order(created_at: :desc)
    else
      redirect_to login_path
    end
  end

  private

  def logged_in?
    session[:account_id] != nil
  end
end
