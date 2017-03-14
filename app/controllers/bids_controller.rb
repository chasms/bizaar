class BidsController < ApplicationController

  def new
    @user = Account.find(session[:account_id])
    @bid = Bid.new
  end

  def create
    @bid = Bid.create( bid_params(:buyer_listing_id, :seller_listing_id))
    @bid.buyer_id= session[:account_id]
   	@listing = Listing.find( params[:bid][:seller_listing_id] )
    @bid.seller_id= @listing.account_id
    if @bid.valid?
   	  @bid.save
    end
      redirect_to account_listing_path(@listing.account_id, @listing.id)
  end

  private

    def bid_params(*args)
	   params.require(:bid).permit(*args)
    end
end
