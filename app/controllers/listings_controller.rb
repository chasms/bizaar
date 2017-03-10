class ListingsController < ApplicationController
	before_action :find_listing, only: [:show, :edit, :update, :destroy]
	
	def new 
		@listing = Listing.new
	end
	
	def create 
		@listing = Listing.new(listing_params(:name,:description))
		byebug
		if @listing.valid?
			@listing.save
			redirect_to listing_path(@listing)
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
end
