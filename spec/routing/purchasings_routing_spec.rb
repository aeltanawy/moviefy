require "rails_helper"

RSpec.describe PurchasingsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/purchasings").to route_to("purchasings#index")
    end

    it "routes to #new" do
      expect(:get => "/purchasings/new").to route_to("purchasings#new")
    end

    it "routes to #show" do
      expect(:get => "/purchasings/1").to route_to("purchasings#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/purchasings/1/edit").to route_to("purchasings#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/purchasings").to route_to("purchasings#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/purchasings/1").to route_to("purchasings#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/purchasings/1").to route_to("purchasings#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/purchasings/1").to route_to("purchasings#destroy", :id => "1")
    end
  end
end
