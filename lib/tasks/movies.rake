namespace :movies do
  desc "pull movies data into movies database"
  task seed_movies: :environment do
    # Remove existing data
    Movie.destroy_all

    CSV.foreach(Rails.root.join("lib", "assets", "movie.csv"), :headers => true) do |row|
      # Confirm row inspection
      puts row.inspect

      # Create new model instances with each row
      Movie.create!(
        movie_title: row['movie_title'].to_s,
        num_critic_for_reviews: row['num_critic_for_reviews'].to_i,
        duration: row['duration'].to_i,
        gross: row['gross'].to_i,
        genres: row['genres'].to_s,
        movie_imdb_link: row['movie_imdb_link'].to_s,
        num_voted_users: row['num_voted_users'].to_i,
        facenumber_in_poster: row['facenumber_in_poster'].to_i,
        plot_keywords: row['plot_keywords'].to_s,
        num_user_for_reviews: row['num_user_for_reviews'].to_i,
        language: row['language'].to_s,
        country: row['country'].to_s,
        content_rating: row['content_rating'].to_s,
        budget: row['budget'].to_i,
        title_year: row['title_year'].to_i,
        imdb_score: row['imdb_score'].to_i,
        aspect_ratio: row['aspect_ratio'].to_f,
        movie_fb_likes: row['movie_facebook_likes'].to_i,
      )

      # Confirm successful completion of the task
      puts "There are now #{Movie.count} row in movies database."
    end
  end
end
