require 'rails_helper'

RSpec.describe SearchController, type: :controller do

  describe "GET #movie" do
    it "returns http success" do
      get :movie
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #crew" do
    it "returns http success" do
      get :crew
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #theater" do
    it "returns http success" do
      get :theater
      expect(response).to have_http_status(:success)
    end
  end

end
