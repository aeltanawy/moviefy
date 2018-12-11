class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :movie_title
      t.integer :num_critic_for_reviews
      t.integer :duration
      t.integer :gross
      t.string :genres
      t.string :movie_imdb_link
      t.integer :num_voted_users
      t.integer :facenumber_in_poster
      t.string :plot_keywords
      t.integer :num_user_for_reviews
      t.string :language
      t.string :country
      t.string :content_rating
      t.integer :budget
      t.integer :title_year
      t.float :imdb_score
      t.float :aspect_ratio
      t.integer :movie_fb_likes

      t.timestamps
    end
  end
end
