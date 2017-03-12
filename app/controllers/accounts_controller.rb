class AccountsController < ApplicationController
  def new
    @account = Account.new
  end

  def create
    @account = Account.new(account_params(:username, :email, :password))
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
    else
      redirect_to login_path
    end
  end

  private

  def account_params(*args)
    params.require(:account).permit(*args)
  end

  def logged_in?
    session[:account_id] != nil
  end
end
