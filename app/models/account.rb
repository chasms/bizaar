class Account < ApplicationRecord
  has_many :listings
  has_many :buyer_bids, through: :listings
  has_many :seller_bids, through: :listings
  has_many :seller_listings, through: :buyer_bids
  has_many :buyer_listings, through: :seller_bids

# email validations
  before_save { self.email = email.downcase }
  validates :email, presence: true, uniqueness: true,
    format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }

# username validations
  before_save { self.username = username.downcase }
  validates :username, presence: true, uniqueness: true,
    format: { without: /\s/ }

# password validations
  has_secure_password
  validates :password, presence: true, length: {minimum: 6}

# avatar validations
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/avatars/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

  def all_bids
    self.buyer_bids + self.seller_bids
  end

end
