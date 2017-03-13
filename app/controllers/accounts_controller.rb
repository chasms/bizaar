class AccountsController < ApplicationController
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
    else
      redirect_to login_path
    end
  end

  private

  def account_params(*args)
    params.require(:account).permit(*args)
  end

end
