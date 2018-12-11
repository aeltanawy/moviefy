Rails.application.routes.draw do
  # Databases
  resources :crews
  resources :movies

  # Route for movie info after thumbnail button click
  get '/movies/:id', to: 'movies#show_movie', as: 'show_movie'

  # Homepage route
  root 'moviefy#index'
end
