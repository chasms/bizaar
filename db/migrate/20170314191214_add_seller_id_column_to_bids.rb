class AddSellerIdColumnToBids < ActiveRecord::Migration[5.0]
  def change
    add_column :bids, :seller_id, :integer
    add_column :bids, :buyer_id, :integer 
  end
end
