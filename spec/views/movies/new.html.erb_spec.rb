require 'rails_helper'

RSpec.describe "movies/new", type: :view do
  before(:each) do
    assign(:movie, Movie.new(
      :movie_title => "MyString",
      :num_critic_for_reviews => 1,
      :duration => 1,
      :gross => 1,
      :genres => "MyString",
      :movie_imdb_link => "MyString",
      :num_voted_users => 1,
      :facenumber_in_poster => 1,
      :plot_keywords => "MyString",
      :num_user_for_reviews => 1,
      :language => "MyString",
      :country => "MyString",
      :content_rating => "MyString",
      :budget => 1,
      :title_year => 1,
      :imdb_score => 1.5,
      :aspect_ratio => 1.5,
      :movie_fb_likes => 1
    ))
  end

  it "renders new movie form" do
    render

    assert_select "form[action=?][method=?]", movies_path, "post" do

      assert_select "input[name=?]", "movie[movie_title]"

      assert_select "input[name=?]", "movie[num_critic_for_reviews]"

      assert_select "input[name=?]", "movie[duration]"

      assert_select "input[name=?]", "movie[gross]"

      assert_select "input[name=?]", "movie[genres]"

      assert_select "input[name=?]", "movie[movie_imdb_link]"

      assert_select "input[name=?]", "movie[num_voted_users]"

      assert_select "input[name=?]", "movie[facenumber_in_poster]"

      assert_select "input[name=?]", "movie[plot_keywords]"

      assert_select "input[name=?]", "movie[num_user_for_reviews]"

      assert_select "input[name=?]", "movie[language]"

      assert_select "input[name=?]", "movie[country]"

      assert_select "input[name=?]", "movie[content_rating]"

      assert_select "input[name=?]", "movie[budget]"

      assert_select "input[name=?]", "movie[title_year]"

      assert_select "input[name=?]", "movie[imdb_score]"

      assert_select "input[name=?]", "movie[aspect_ratio]"

      assert_select "input[name=?]", "movie[movie_fb_likes]"
    end
  end
end
