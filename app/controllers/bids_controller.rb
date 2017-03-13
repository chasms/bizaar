class BidsController < ApplicationController

  def new
    @user = Account.find(session[:account_id])
    @bid = Bid.new
  end

  def create
  	byebug
    @bid = Bid.create( bid_params )
   	@listing = Listing.find( params[:bid][:seller_listing_id] )
   	byebug	
    if @bid.valid?
   	  @bid.save
   	  redirect_to account_listing_path(@listing.account_id, @listing.id)
    else
    	redirect_to :new
    end
  end
  
  private 
  
    def bid_params
	   params.require(:bid).permit(:buyer_listing_id, :seller_listing_id)
    end
end
