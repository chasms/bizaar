class Bid < ApplicationRecord
  belongs_to :seller_listing, :class_name => "Listing", :foreign_key => "buyer_listing_id"
  belongs_to :buyer_listing, :class_name => "Listing", :foreign_key => "seller_listing_id"
  # belongs_to :seller_account, through: :seller_listing, :class_name=>"Account"
  # belongs_to :buyer_account, through: :buyer_listing, :class_name=>"Account"



end
