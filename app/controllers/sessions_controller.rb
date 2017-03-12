class SessionsController < ApplicationController
  def new
    @account = Account.new
    redirect_to '/' unless logged_out?
  end

  def create
    @account = Account.find_by(username: params[:account][:username])
    return head(:forbidden) unless @account.try(:authenticate, params[:account][:password])
    session[:account_id] = @account.id
    redirect_to '/'
  end

  def destroy
    session.clear
    redirect_to login_path
  end

private

  def logged_out?
    session[:name] == nil
  end
end
