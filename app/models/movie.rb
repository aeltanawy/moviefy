class Movie < ApplicationRecord

  def self.search(title=None, genre=None, key=None )
    if title || genre || key
      where('movie_title LIKE ? AND genres LIKE ? AND plot_keywords LIKE ?', "%#{title}%", "%#{genre}%", "%#{key}%")
    else
      all
    end
  end

end
