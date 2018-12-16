class ShowMovieController < ApplicationController
  include ShowMovieHelper
  rescue_from ActiveRecord::RecordNotFound, with: :redirect_if_not_found

  def show_movie
    if params[:movie_id]
      @movie_title = params[:movie_id]
    elsif params[:id]
      @movie_title = params[:id]
    end

    Movie.all.each do |movie|
      title = adjust_movie_title(movie.movie_title)
      if title == @movie_title.downcase
        @movie = movie
      end
    end

    @crew = Crew.find_by_movie_id(@movie.id)
    @fb_like = [@crew.director_facebook_likes, @crew.actor_1_facebook_likes, @crew.actor_2_facebook_likes, @crew.actor_3_facebook_likes]
  end

end
