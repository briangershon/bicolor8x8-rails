require "rails_helper"

RSpec.describe PixelPicsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/pixel_pics").to route_to("pixel_pics#index")
    end

    it "routes to #new" do
      expect(:get => "/pixel_pics/new").to route_to("pixel_pics#new")
    end

    it "routes to #show" do
      expect(:get => "/pixel_pics/1").to route_to("pixel_pics#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/pixel_pics/1/edit").to route_to("pixel_pics#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/pixel_pics").to route_to("pixel_pics#create")
    end

    it "routes to #update" do
      expect(:put => "/pixel_pics/1").to route_to("pixel_pics#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/pixel_pics/1").to route_to("pixel_pics#destroy", :id => "1")
    end

  end
end
