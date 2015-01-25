require 'rails_helper'

RSpec.describe "pixel_pics/edit", :type => :view do
  before(:each) do
    @pixel_pic = assign(:pixel_pic, PixelPic.create!(
      :name => "MyString",
      :image_characters => "MyString"
    ))
  end

  it "renders the edit pixel_pic form" do
    render

    assert_select "form[action=?][method=?]", pixel_pic_path(@pixel_pic), "post" do

      assert_select "input#pixel_pic_name[name=?]", "pixel_pic[name]"

      assert_select "input#pixel_pic_image_characters[name=?]", "pixel_pic[image_characters]"
    end
  end
end
