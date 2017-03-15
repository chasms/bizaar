class AccountsController < ApplicationController
  before_action :find_account, except: [:new, :create, :show]
  before_action :login, except: [:new, :create]
  before_action :validate_user, only: [:edit, :update, :destroy]

  def new
    @account = Account.new
    redirect_to '/' if logged_in?
  end

  def create
    @account = Account.new(account_params(:username, :email, :password, :password_confirmation, :avatar))
    if @account.save
      session[:account_id] = @account.id
      redirect_to @account
    else
      render :new
    end
  end

  def show
    @account = Account.find(params[:id])
    @listings = @account.listings.all.order(created_at: :desc)
    byebug
    @bids = @account.bids
  end

  def edit
  end

	def update
		if @account.update(account_params(:username, :email, :password, :password_confirmation, :avatar))
			redirect_to account_path(@account)
		else
			render :edit
		end
	end

  def destroy
    @account.listings.destroy
    @account.destroy
    session.destroy
    redirect_to root_path
  end


  private

    def account_params(*args)
      params.require(:account).permit(*args)
    end

    def find_account
      @account = Account.find(params[:id])
    end

    def validate_user
			user = Account.where(id: session[:account_id])[0]
			unless user == @account
				redirect_to account_path(@account)
			end
    end

end
