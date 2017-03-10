class SessionsController < ApplicationController
  def new
    @user = User.new
    redirect_to '/' unless logged_out?
  end

  def create
    @account = Account.find_by(account_params(:username))
    return head(:forbidden) unless @account.authenticate(account_params(:password))
    session[:user_id] = @user.id
  end

  def destroy
    session.clear
    redirect_to '/'
  end

private

  def account_params(*args)
    params.require(:account).permit(*args)
  end

  def logged_out?
    session[:name] == nil
  end
end
