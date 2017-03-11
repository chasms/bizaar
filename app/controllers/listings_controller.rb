class ListingsController < ApplicationController
	before_action :find_listing, only: [:show, :edit, :update, :destroy]
	before_action :find_account	
	def new 
		@listing = Listing.new
	end
	
	def create 
		@listing = Listing.new(listing_params(:name,:description,:account_id))
		if @listing.valid?
			@listing.save
			byebug
			redirect_to account_listing_path(@listing.account_id, @listing.id)
		else
			render :new
		end
	end 
	
	def show 
		@listing = Listing.find(params[:id])
	end 

	def edit 
	end

	def update
	end

	def destroy 
	end

	private 
		def listing_params(*args)
			params.require(:listing).permit(*args)
		end

		def find_listing
			@listing = Listing.find(params[:id])
		end
		def find_account 
			@account = Account.find(params[:account_id])
		end
end
