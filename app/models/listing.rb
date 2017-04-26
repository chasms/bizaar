class Listing < ApplicationRecord
	belongs_to :account
	has_many :buyer_bids, class_name: "Bid", foreign_key: "buyer_listing_id"
	has_many :seller_bids, class_name: "Bid", foreign_key: "seller_listing_id"

	validates :name, presence: true, length:{maximum: 20}
	validates :description, presence: true

	has_attached_file :photo, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/photos/:style/missing.png"
	validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/

def self.search (search)
	if search
		self.where('lower(description) like ? or lower(name) like ?', "%#{search.downcase}%", "%#{search.downcase}%")
	else
		self.all
	end
end

end
