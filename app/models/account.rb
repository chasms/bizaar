class Account < ApplicationRecord
  has_many :listings
  before_save { self.email = email.downcase }
  validates :email, presence: true, uniqueness: true,
    format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
  validates :username, presence: true, uniqueness: true
  has_secure_password
  validates :password, presence: true, length: {minimum: 6}
end
