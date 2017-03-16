class BidsController < ApplicationController
  before_action :login
  before_action :set_bid, only: [:edit, :update]


  def new
    @user = Account.find(session[:account_id])
    @bid = Bid.new
  end

  def create
    @bid = Bid.create(bid_params(:buyer_listing_id, :seller_listing_id))
   	@listing = Listing.find(params[:bid][:seller_listing_id])
    if @bid.valid?
   	  @bid.save
    end
      redirect_to account_listing_path(@listing.account_id, @listing.id)
  end

  def edit
    byebug
    @listings = Listing.find(@bid.buyer_listing_id).account.listings
  end

  def update
    @bid.update(seller_listing_id:params[:listing_id], buyer_listing_id: @bid.seller_listing_id)
    listing = Listing.find(@bid.seller_listing_id)
    redirect_to account_listing_path(listing.account, listing)
    # should show a message confirming that a request was sent out to update bid
    # should send a notification to buyer that request was updated
  end

  private

    def bid_params(*args)
      params.require(:bid).permit(*args)
    end

    def set_bid
      @bid = Bid.find(params[:id])
    end

end
