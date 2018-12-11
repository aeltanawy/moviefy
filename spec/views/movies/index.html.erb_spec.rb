require 'rails_helper'

RSpec.describe "movies/index", type: :view do
  before(:each) do
    assign(:movies, [
      Movie.create!(
        :movie_title => "Movie Title",
        :num_critic_for_reviews => 2,
        :duration => 3,
        :gross => 4,
        :genres => "Genres",
        :movie_imdb_link => "Movie Imdb Link",
        :num_voted_users => 5,
        :facenumber_in_poster => 6,
        :plot_keywords => "Plot Keywords",
        :num_user_for_reviews => 7,
        :language => "Language",
        :country => "Country",
        :content_rating => "Content Rating",
        :budget => 8,
        :title_year => 9,
        :imdb_score => 10.5,
        :aspect_ratio => 11.5,
        :movie_fb_likes => 12
      ),
      Movie.create!(
        :movie_title => "Movie Title",
        :num_critic_for_reviews => 2,
        :duration => 3,
        :gross => 4,
        :genres => "Genres",
        :movie_imdb_link => "Movie Imdb Link",
        :num_voted_users => 5,
        :facenumber_in_poster => 6,
        :plot_keywords => "Plot Keywords",
        :num_user_for_reviews => 7,
        :language => "Language",
        :country => "Country",
        :content_rating => "Content Rating",
        :budget => 8,
        :title_year => 9,
        :imdb_score => 10.5,
        :aspect_ratio => 11.5,
        :movie_fb_likes => 12
      )
    ])
  end

  it "renders a list of movies" do
    render
    assert_select "tr>td", :text => "Movie Title".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => "Genres".to_s, :count => 2
    assert_select "tr>td", :text => "Movie Imdb Link".to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
    assert_select "tr>td", :text => "Plot Keywords".to_s, :count => 2
    assert_select "tr>td", :text => 7.to_s, :count => 2
    assert_select "tr>td", :text => "Language".to_s, :count => 2
    assert_select "tr>td", :text => "Country".to_s, :count => 2
    assert_select "tr>td", :text => "Content Rating".to_s, :count => 2
    assert_select "tr>td", :text => 8.to_s, :count => 2
    assert_select "tr>td", :text => 9.to_s, :count => 2
    assert_select "tr>td", :text => 10.5.to_s, :count => 2
    assert_select "tr>td", :text => 11.5.to_s, :count => 2
    assert_select "tr>td", :text => 12.to_s, :count => 2
  end
end
