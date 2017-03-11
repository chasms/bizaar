class BidsController < ApplicationController

  def new
    @user = Account.find(session[:account_id])
    @bid = Bid.new
  end

  def create
    @bid = Bid.new
  end

end
