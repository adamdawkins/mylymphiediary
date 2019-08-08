require "rails_helper"

RSpec.describe AffectedBodyPartsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/affected_body_parts").to route_to("affected_body_parts#index")
    end

    it "routes to #new" do
      expect(:get => "/affected_body_parts/new").to route_to("affected_body_parts#new")
    end

    it "routes to #show" do
      expect(:get => "/affected_body_parts/1").to route_to("affected_body_parts#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/affected_body_parts/1/edit").to route_to("affected_body_parts#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/affected_body_parts").to route_to("affected_body_parts#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/affected_body_parts/1").to route_to("affected_body_parts#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/affected_body_parts/1").to route_to("affected_body_parts#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/affected_body_parts/1").to route_to("affected_body_parts#destroy", :id => "1")
    end
  end
end
