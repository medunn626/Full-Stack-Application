require "rails_helper"

RSpec.describe BarbersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/barbers").to route_to("barbers#index")
    end


    it "routes to #show" do
      expect(:get => "/barbers/1").to route_to("barbers#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/barbers").to route_to("barbers#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/barbers/1").to route_to("barbers#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/barbers/1").to route_to("barbers#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/barbers/1").to route_to("barbers#destroy", :id => "1")
    end

  end
end
