class SearchController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :redirect_if_not_found

  def movie
  end

  def crew
  end

  def theater
  end

  def top_10_movies
    top_10 = Movie.order(imdb_score: :desc).limit(10)
    @top_10_title = []
    @top_10_score = []
    top_10.each do |rec|
      @top_10_title << rec.movie_title
      @top_10_score << rec.imdb_score
    end
  end
end
