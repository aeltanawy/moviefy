json.extract! movie, :id, :movie_title, :num_critic_for_reviews, :duration, :gross, :genres, :movie_imdb_link, :num_voted_users, :facenumber_in_poster, :plot_keywords, :num_user_for_reviews, :language, :country, :content_rating, :budget, :title_year, :imdb_score, :aspect_ratio, :movie_fb_likes, :created_at, :updated_at
json.url movie_url(movie, format: :json)
