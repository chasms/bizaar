class SessionsController < ApplicationController

  def new
    @account = Account.new
    redirect_to '/' if logged_in?
  end

  def create
    @account = Account.find_by(username: params[:account][:username].downcase)
    if @account.try(:authenticate, params[:account][:password])
      session[:account_id] = @account.id
      redirect_to '/'
    else
      render :new
    end
  end

  def destroy
    session.clear
    redirect_to login_path
  end

end
