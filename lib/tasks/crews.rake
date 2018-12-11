namespace :crews do
  desc "pull crews data into crews database"
  task seed_crews: :environment do
    # Remove existing data in the database
    Crew.destroy_all

    CSV.foreach(Rails.root.join("lib", "assets", "crew.csv"), :headers => true) do |row|
      # Confirm row inspection
      puts row.inspect

      # Get the movie id of the current movie from movies database
      movie_rec = Movie.find_by_movie_title(row['movie_title'])

      # Create new model instance with each row
      Crew.create!(
        director_name: row['director_name'].to_s,
        director_facebook_likes: row['director_facebook_likes'].to_i,
        actor_1_name: row['actor_1_name'].to_s,
        actor_1_facebook_likes: row['actor_1_facebook_likes'].to_i,
        actor_2_name: row['actor_2_name'].to_s,
        actor_2_facebook_likes: row['actor_2_facebook_likes'].to_i,
        actor_3_name: row['actor_3_name'].to_s,
        actor_3_facebook_likes: row['actor_3_facebook_likes'].to_i,
        cast_total_facebook_likes: row['cast_total_facebook_likes'].to_i,
        movie_id: movie_rec.id,
      )

      # Confirm successfull completion fo the task
      puts "There are now #{Crew.count} rows in crews database."
    end
  end
end
