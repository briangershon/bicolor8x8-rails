class PixelPic < ActiveRecord::Base
  validates :name, presence: true
  validates :image_characters, uniqueness: true, presence: true, length: { is: 64 }, format: { with: /\A[orgy]+\z/, message: "only allows 'o' for empty, 'r' for red, 'g' for green, 'y' for yellow." }
end
