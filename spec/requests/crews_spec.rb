require 'rails_helper'

RSpec.describe "Crews", type: :request do
  describe "GET /crews" do
    it "works! (now write some real specs)" do
      get crews_path
      expect(response).to have_http_status(200)
    end
  end
end
