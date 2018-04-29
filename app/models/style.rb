class Style < ApplicationRecord
	belongs_to :brand
	has_many :products
end
