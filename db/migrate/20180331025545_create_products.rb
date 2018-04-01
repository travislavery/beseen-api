class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :title
      t.string :description
      t.integer :inventory_key

      t.string :brand_logo_image
      t.string :thumbnail_image
      t.string :color_swatch_image
      t.string :product_image
      t.string :spec_sheet
      t.string :product_measurements

      t.string :product_status
      t.string :size
      t.integer :size_index
      t.string :weight

      t.integer :price_id
      t.integer :brand_id
      t.integer :style_id
      t.integer :color_id

      t.timestamps
    end
  end
end
