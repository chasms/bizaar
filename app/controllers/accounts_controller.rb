class AccountsController < ApplicationController
  before_action :set_account, only: [:show]

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

  end

  private

      def set_account
        @account = Account.find(params[:id])
      end

      def account_params(*args)
        params.require(:account).permit(*args)
      end
end
