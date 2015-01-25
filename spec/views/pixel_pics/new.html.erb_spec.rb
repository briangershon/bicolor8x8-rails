require 'rails_helper'

RSpec.describe "pixel_pics/new", :type => :view do
  before(:each) do
    assign(:pixel_pic, PixelPic.new(
      :name => "MyString",
      :image_characters => "MyString"
    ))
  end

  it "renders new pixel_pic form" do
    render

    assert_select "form[action=?][method=?]", pixel_pics_path, "post" do

      assert_select "input#pixel_pic_name[name=?]", "pixel_pic[name]"

      assert_select "input#pixel_pic_image_characters[name=?]", "pixel_pic[image_characters]"
    end
  end
end
