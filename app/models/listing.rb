class Listing < ApplicationRecord
	belongs_to :account
	validates :name, presence: true
	validates :description, presence: true

def self.search (search)
	if search
		self.where('description like ? or name like ?', "%#{search}%", "%#{search}%")
	else
		self.all
	end
end

end
