require 'pry'
class Product < ApplicationRecord
	has_many :product_categories
	has_many :categories, through: :product_categories
	has_many :sub_categories
	belongs_to :color
	belongs_to :style
	has_one :price
	belongs_to :brand

	def self.create_from_hash(object)
		binding.pry
		brand = Brand.find_or_create_by(
			name: object[:MILL],
			brand_logo_image: object[:BRAND_LOGO_IMAGE],
		)

		style = Style.find_or_create_by(
			style_number: object[:"STYLE#"],
			brand_id: brand.id,
			available_sizes: object[:AVAILABLE_SIZES],
		)

		color = Color.find_or_create_by(
			name: object[:COLOR_NAME],
			sanmar_mainframe_color: object[:SANMAR_MAINFRAME_COLOR],
			color_square_image: object[:COLOR_SQUARE_IMAGE],
		)

		product = Product.create(
			title: object[:PRODUCT_TITLE], 
			description: object[:PRODUCT_DESCRIPTION],
			inventory_key: object[:INVENTORY_KEY],

			front_model_image_url: object[:FRONT_MODEL_IMAGE_URL],
			brand_logo_image: object[:BRAND_LOGO_IMAGE],
			thumbnail_image: object[:THUMBNAIL_IMAGE],
			color_swatch_image: object[:COLOR_SWATCH_IMAGE],
			product_image: object[:PRODUCT_IMAGE],
			spec_sheet: object[:SPEC_SHEET],
			product_measurements: object[:PRODUCT_MEASUREMENTS],

			product_status: object[:PRODUCT_STATUS],
			size: object[:SIZE],
			size_index: object[:SIZE_INDEX],
			weight: object[:PIECE_WEIGHT],

			#color: object[:COLOR_NAME],

			brand_id: brand.id,
			style_id: style.id,
			color_id: color.id,
		)

		price = Price.create(
			product_id: product.id,
			price_text: object[:PRICE_TEXT],
			suggested_price: object[:SUGGESTED_PRICE],
			piece_price: object[:PIECE_PRICE],
			dozens_price: object[:DOZENS_PRICE],
			case_price: object[:CASE_PRICE],
			case_size: object[:CASE_SIZE],
			price_group: object[:PRICE_GROUP],
			msrp: object[:MSRP],
			map_pricing: object[:MAP_PRICING],
		)
		binding.pry
	end
end