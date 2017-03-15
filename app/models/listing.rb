class Listing < ApplicationRecord
	belongs_to :account
	has_many :bids
	validates :name, presence: true
	validates :description, presence: true

	has_attached_file :photo, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/photos/:style/missing.png"
	validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/

def self.search (search)
	if search
		self.where('description like ? or name like ?', "%#{search}%", "%#{search}%")
	else
		self.all
	end
end

end
