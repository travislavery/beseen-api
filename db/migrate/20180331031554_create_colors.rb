class CreateColors < ActiveRecord::Migration[5.1]
  def change
    create_table :colors do |t|
      t.string :name
      t.string :sanmar_mainframe_color
      t.string :color_square_image

      t.timestamps
    end
  end
end
