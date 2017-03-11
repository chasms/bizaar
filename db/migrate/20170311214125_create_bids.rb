class CreateBids < ActiveRecord::Migration[5.0]
  def change
    create_table :bids do |t|
      t.integer :buyer_listing_id
      t.integer :seller_listing_id
      t.timestamps
    end
  end
end
