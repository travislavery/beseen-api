class CreatePrices < ActiveRecord::Migration[5.1]
  def change
    create_table :prices do |t|
      t.integer :product_id
      t.string :price_text
      t.string :suggested_price
      t.string :piece_price
      t.string :dozens_price
      t.string :case_price
      t.integer :case_size
      t.string :price_group
      t.string :msrp
      t.string :map_pricing

      t.timestamps
    end
  end
end
