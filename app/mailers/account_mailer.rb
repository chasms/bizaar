class AccountMailer < ApplicationMailer
  default from: 'bizaar666@gmail.com'

  def welcome_email(account)
    @account = account
    mail(to: @account.email, subject: 'Welcome to Bizaar!')
  end
end
