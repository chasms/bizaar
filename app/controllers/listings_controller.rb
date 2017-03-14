class ListingsController < ApplicationController
	before_action :find_listing, only: [:show, :edit, :update, :destroy]
	before_action :find_account, except: [:new, :index, :create]
	before_action :find_user

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
		@listings= Listing.search(params[:search])
	end

	def edit
		unless @user == @account
			redirect_to account_listing_path(@account, @listing)
		end
	end

	def update
		unless @user == @account
			redirect_to account_listing_path(@account, @listing)
		end
		if @listing.update(listing_params(:name, :description, :photo))
			redirect_to account_listing_path(@account, @listing)
		else
			render :edit
		end
	end

	def destroy
		unless @user == @account
			redirect_to account_listing_path(@account, @listing)
		end
		@listing.destroy
		redirect_to root_path
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
			if logged_in?
				@account = Account.find(@listing.account_id)
			else
				redirect_to login_path
			end
		end

		def find_user
			@user = Account.find(session[:account_id])
		end

end
