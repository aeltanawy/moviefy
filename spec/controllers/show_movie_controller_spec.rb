require 'rails_helper'

RSpec.describe ShowMovieController, type: :controller do

  describe "GET #show_movie" do
    it "returns http success" do
      get :show_movie
      expect(response).to have_http_status(:success)
    end
  end

end
