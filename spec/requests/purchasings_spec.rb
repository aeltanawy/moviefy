require 'rails_helper'

RSpec.describe "Purchasings", type: :request do
  describe "GET /purchasings" do
    it "works! (now write some real specs)" do
      get purchasings_path
      expect(response).to have_http_status(200)
    end
  end
end
