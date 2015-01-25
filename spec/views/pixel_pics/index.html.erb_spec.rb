require 'rails_helper'

RSpec.describe "pixel_pics/index", :type => :view do
  before(:each) do
    assign(:pixel_pics, [
      PixelPic.create!(
        :name => "Name",
        :image_characters => "Image Characters"
      ),
      PixelPic.create!(
        :name => "Name",
        :image_characters => "Image Characters"
      )
    ])
  end

  it "renders a list of pixel_pics" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Image Characters".to_s, :count => 2
  end
end
