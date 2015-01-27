class AddIndexToPixelPic < ActiveRecord::Migration
  def change
    add_index :pixel_pics, :image_characters, unique: true
  end
end
