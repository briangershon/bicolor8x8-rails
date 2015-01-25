class CreatePixelPics < ActiveRecord::Migration
  def change
    create_table :pixel_pics do |t|
      t.string :name
      t.string :image_characters

      t.timestamps null: false
    end
  end
end
