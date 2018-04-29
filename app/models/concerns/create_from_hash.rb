require 'pry'
def create_from_hash(object)
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

		color: object[:COLOR_NAME],

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

create_from_hash({
  "UNIQUE_KEY": "1000001",
  "PRODUCT_TITLE": "District Juniors The Concert Tank. DT5301",
  "PRODUCT_DESCRIPTION": "This carefree tank is fit for any venue whether layered or on its own.4.3-ounce 100% soft spun cotton 30 singles 50/50 soft spun cotton/poly (Neon) Tear-away tagDue to the nature of 50/50 cotton/polyester neon fabrics special care must be taken throughout the printing process. ",
  "STYLE#": "DT5301",
  "AVAILABLE_SIZES": "Juniors Sizes: XS-4XL",
  "BRAND_LOGO_IMAGE": "districtheader.jpg",
  "THUMBNAIL_IMAGE": "DT5301TN.jpg",
  "COLOR_SWATCH_IMAGE": "DT5301sw.jpg",
  "PRODUCT_IMAGE": "DT5301.jpg",
  "SPEC_SHEET": "DT5301_specsheet.pdf",
  "PRICE_TEXT": "Price",
  "SUGGESTED_PRICE": "5.98",
  "CATEGORY_NAME": "Juniors & Young Men;T-Shirts ;T-Shirts ;T-Shirts ",
  "SUBCATEGORY_NAME": " ",
  "COLOR_NAME": "Neon Pink",
  "COLOR_SQUARE_IMAGE": "district_neonpink.gif",
  "COLOR_PRODUCT_IMAGE": "DT5301_neonpink_model_front_122014.jpg",
  "COLOR_PRODUCT_IMAGE_THUMBNAIL": "DT5301_neonpink_model_front_122014TN.jpg",
  "SIZE": "XXL",
  "PIECE_WEIGHT": "0.3125",
  "PIECE_PRICE": "4.99",
  "DOZENS_PRICE": "4.49",
  "CASE_PRICE": "3.99",
  "PRICE_GROUP": "YX",
  "CASE_SIZE": "36",
  "INVENTORY_KEY": "100000",
  "SIZE_INDEX": "1",
  "SANMAR_MAINFRAME_COLOR": "Neon Pink",
  "MILL": "District",
  "PRODUCT_STATUS": "Active",
  "COMPANION_STYLE": "DT5301|DT5300|DT5301YG",
  "MSRP": "7.98",
  "MAP_PRICING": "6.38",
  "FRONT_MODEL_IMAGE_URL": "https://cdnl.sanmar.com/imglib/mresjpg/2014/f20/DT5301_neonpink_model_front_122014.jpg",
  "BACK_MODEL_IMAGE_URL": "",
  "FRONT_FLAT_IMAGE_URL": "",
  "BACK_FLAT_IMAGE_URL": "",
  "PRODUCT_MEASUREMENTS": "DT5301_productmeasurement.pdf"
 })