class ShowMovieController < ApplicationController
  include ShowMovieHelper

  def show_movie
    @movie_title = params[:movie_id]

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
