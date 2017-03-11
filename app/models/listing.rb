class Listing < ApplicationRecord
	belongs_to :account
	#validates :name, presence: true
	#validates :description, presence: true
end
