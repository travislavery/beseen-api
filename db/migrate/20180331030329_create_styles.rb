class CreateStyles < ActiveRecord::Migration[5.1]
  def change
    create_table :styles do |t|
      t.string :style_number
      t.integer :brand_id
      t.string :available_sizes

      t.timestamps
    end
  end
end
