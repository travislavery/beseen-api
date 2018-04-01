class Product < ApplicationRecord
	belongs_to :category
	has_one :color
	belongs_to :style
	has_one :price
	belongs_to :brand
end
