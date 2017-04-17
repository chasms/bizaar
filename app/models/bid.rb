class Bid < ApplicationRecord
  belongs_to :seller_listing, class_name: "Listing", :foreign_key => "seller_listing_id"
  belongs_to :buyer_listing, class_name: "Listing", :foreign_key => "buyer_listing_id"
  has_one :seller_account, through: :seller_listing, source: :account
  has_one :buyer_account, through: :buyer_listing, source: :account

  validates :buyer_listing_id, uniqueness: { scope: :seller_listing_id }

end
