class AccountsController < ApplicationController
  before_action :find_account, except: [:new, :create, :show]
  before_action :find_user, except: [:new, :create]

  def new
    @account = Account.new
    redirect_to '/' if logged_in?
  end

  def create
    @account = Account.new(account_params(:username, :email, :password, :avatar))
    if @account.save
      session[:account_id] = @account.id
      redirect_to @account
    else
      render :new
    end
  end

  def show
    if logged_in?
      @account = Account.find(params[:id])
      @listings = @account.listings.all.order(created_at: :desc)
      @bids = Bid.where('seller_listing_id = ?', @account.id)
    else
      redirect_to login_path
    end
  end

  def edit
		unless @user == @account
			redirect_to account_path(@account)
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

  private

    def account_params(*args)
      params.require(:account).permit(*args)
    end

    def find_account
      if logged_in?
        @account = Account.find(params[:id])
      else
        redirect_to login_path
      end
    end

    def find_user
      @user = Account.find(session[:account_id])
    end

end
