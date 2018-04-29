# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180401165950) do

  create_table "brands", force: :cascade do |t|
    t.string "name"
    t.string "brand_logo_image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "colors", force: :cascade do |t|
    t.string "name"
    t.string "sanmar_mainframe_color"
    t.string "color_square_image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "prices", force: :cascade do |t|
    t.integer "product_id"
    t.string "price_text"
    t.string "suggested_price"
    t.string "piece_price"
    t.string "dozens_price"
    t.string "case_price"
    t.integer "case_size"
    t.string "price_group"
    t.string "msrp"
    t.string "map_pricing"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_categories", force: :cascade do |t|
    t.integer "category_id"
    t.integer "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.integer "inventory_key"
    t.string "front_model_image_url"
    t.string "brand_logo_image"
    t.string "thumbnail_image"
    t.string "color_swatch_image"
    t.string "product_image"
    t.string "spec_sheet"
    t.string "product_measurements"
    t.string "product_status"
    t.string "size"
    t.integer "size_index"
    t.string "weight"
    t.string "color"
    t.integer "brand_id"
    t.integer "style_id"
    t.integer "color_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "styles", force: :cascade do |t|
    t.string "style_number"
    t.integer "brand_id"
    t.string "available_sizes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sub_categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
