require 'rails_helper'

RSpec.describe "PixelPics", :type => :request do
  describe "GET /pixel_pics" do
    it "works! (now write some real specs)" do
      get pixel_pics_path
      expect(response.status).to be(200)
    end
  end
end
