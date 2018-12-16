class Crew < ApplicationRecord
  belongs_to :movie

  def self.search(dir=None, actor=None, movie=None )
    # get the movie id
    if movie
      movie_rec = Movie.find_by('movie_title LIKE ?', movie)
      if movie_rec
        movie_id = movie_rec.id
      end
    end

    # search crew database
    if dir || actor || movie
      where('director_name LIKE ? AND (actor_1_name LIKE ? OR actor_2_name LIKE ? OR actor_3_name LIKE ?) AND movie_id LIKE ?', "%#{dir}%", "%#{actor}%", "%#{actor}%", "%#{actor}%", "%#{movie_id}%")
    else
      all
    end
  end

end
