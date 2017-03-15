class WelcomeController < ApplicationController

  def index
    @account = Account.find(session[:account_id])
    @listings = Listing.all.order(created_at: :desc)
  end

end
