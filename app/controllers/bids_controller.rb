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

def edit
  @bid=set_bid
  @listings=Listing.where('account_id= ?', @bid.buyer_id)
end

def update
  @bid=set_bid
  @bid.update(buyer_listing_id:params[:listing_id])
  redirect_to account_listing_path(@bid.seller_id, @bid.seller_listing_id)
  # should show a message confirming that a request was sent out to update bid
  # should send a notification to buyer that request was updated
end

  private

    def bid_params(*args)
	   params.require(:bid).permit(*args)
    end

    def set_bid
      Bid.find(params[:id])
    end

end
