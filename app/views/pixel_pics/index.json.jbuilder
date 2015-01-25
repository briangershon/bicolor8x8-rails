json.array!(@pixel_pics) do |pixel_pic|
  json.extract! pixel_pic, :id, :name, :image_characters
  json.url pixel_pic_url(pixel_pic, format: :json)
end
