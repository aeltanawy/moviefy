Rails.application.routes.draw do
  resources :theaters
  # Databases
  resources :crews
  resources :movies

  # Get routes
  get 'theater_map/map', to: 'theater_map#map', as: 'theater_map'
  get 'show_movie/show_movie'

  # Route for movie info after thumbnail button click
  get '/show_movie/:id', to: 'show_movie#show_movie', as: 'show_movie'

  # Homepage route
  root 'moviefy#index'
end
