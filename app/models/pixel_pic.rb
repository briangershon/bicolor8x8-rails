class PixelPic < ActiveRecord::Base
  validates :name, presence: true, format: { with: /\A[a-z0-9]+\z/, message: "lower case letters and numbers only" }
  validates :image_characters, uniqueness: true, presence: true, length: { is: 64 }, format: { with: /\A[orgy]+\z/, message: "only allows 'o' for empty, 'r' for red, 'g' for green, 'y' for yellow." }
end
