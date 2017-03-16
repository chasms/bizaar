class ListingsController < ApplicationController
	before_action :find_listing, only: [:show, :edit, :update, :destroy]
	before_action :find_account, except: [:new, :create, :index, :accept]
	before_action :validate_user, only: [:update, :destroy]
	before_action :login

	def new
		@listing = Listing.new
    @bid = Bid.new
    @account = Account.find(session[:account_id])
	end

	def create
		@listing = Listing.new(listing_params(:name, :description, :account_id, :photo))
		if @listing.valid?
			@listing.save
			redirect_to account_listing_path(@listing.account_id, @listing.id)
		else
			render :new
		end
	end

	def show
		@bids = Bid.where(seller_listing_id: @listing.id)
		@bid = Bid.new
	end

	def index
		@listings = Listing.search(params[:search])
	end

	def edit
	end

	def update
		if @listing.update(listing_params(:name, :description, :photo))
			redirect_to account_listing_path(@account, @listing)
		else
			render :edit
		end
	end

	def destroy
		@listing.destroy
		redirect_to root_path
	end

	def accept
		@seller_listing = Listing.find_by(id: params[:seller_listing_id])
		@seller = Listing.find(params[:seller_listing_id]).account.id

		@buyer_listing = Listing.find_by(id: params[:buyer_listing_id])
		@buyer = Listing.find(params[:buyer_listing_id]).account.id

		@buyer_listing.update(account_id: @seller)
		@seller_listing.update(account_id: @buyer)

		Bid.find_by(buyer_listing_id: params[:buyer_listing_id], seller_listing_id: params[:seller_listing_id]).destroy

		redirect_to account_listing_path(@buyer, @buyer_listing)
	end

	private

		def listing_params(*args)
			params.require(:listing).permit(*args)
		end

		def find_listing
			@listing = Listing.where(id: params[:id])[0]
			unless @listing
			 	redirect_to root_path
			end
		end

		def find_account
			if @listing
				@account = Account.find(@listing.account_id)
			else
				@account = Account.find(params[:account_id])
			end
		end

		def validate_user
			user = Account.where(id: session[:account_id])[0]
			unless user == @account
				redirect_to account_listing_path(@account, @listing)
			end
		end

end
