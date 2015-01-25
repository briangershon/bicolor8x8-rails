require 'rails_helper'

RSpec.describe "pixel_pics/show", :type => :view do
  before(:each) do
    @pixel_pic = assign(:pixel_pic, PixelPic.create!(
      :name => "Name",
      :image_characters => "Image Characters"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Image Characters/)
  end
end
