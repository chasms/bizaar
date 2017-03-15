class AddEmailConfirmColumnToAccounts < ActiveRecord::Migration[5.0]
  def change
    add_column :accounts, :email_confirmed, :boolean
    add_column :accounts, :confirm_token, :string
  end
end
