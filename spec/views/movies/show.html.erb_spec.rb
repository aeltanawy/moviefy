require 'rails_helper'

RSpec.describe "movies/show", type: :view do
  before(:each) do
    @movie = assign(:movie, Movie.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to exist(/Movie Title/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/Genres/)
    expect(rendered).to match(/Movie Imdb Link/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/6/)
    expect(rendered).to match(/Plot Keywords/)
    expect(rendered).to match(/7/)
    expect(rendered).to match(/Language/)
    expect(rendered).to match(/Country/)
    expect(rendered).to match(/Content Rating/)
    expect(rendered).to match(/8/)
    expect(rendered).to match(/9/)
    expect(rendered).to match(/10.5/)
    expect(rendered).to match(/11.5/)
    expect(rendered).to match(/12/)
  end
end
