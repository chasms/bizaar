class SessionsController < ApplicationController
  def new
  end

  def create
    @account = Account.find_by()
  end

  def destroy
    session.clear
    redirect_to '/'
  end
end
