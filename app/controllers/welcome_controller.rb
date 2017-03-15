class WelcomeController < ApplicationController
  before_action :login

  def index
    @account = Account.find(session[:account_id])
    @listings = Listing.all.order(created_at: :desc)
  end

end
