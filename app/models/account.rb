class Account < ApplicationRecord
  has_many :listings

  before_save { self.email = email.downcase }
  validates :email, presence: true, uniqueness: true,
    format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
  validates :username, presence: true, uniqueness: true
  has_secure_password
  validates :password, presence: true, length: {minimum: 6}

  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/avatars/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

  def buyer_bids
    Bid.where('? = ?', Listing.find(buyer_listing_id).account_id, self.id)
  end

  def seller_bids
    Bid.where('? = ?', Listing.find(seller_listing_id).account_id, self.id)
  end

  def all_bids
    buyer_bids && seller_bids
  end

end
