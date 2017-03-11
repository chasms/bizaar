class BidsController < ApplicationController

  def new
    @user = Account.where(id: 1)
    @bid = Bid.new
  end

  def create
  end

end
