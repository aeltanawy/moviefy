Rails.application.routes.draw do
  get 'show_movie/show_movie'
  # Databases
  resources :crews
  resources :movies

  # Route for movie info after thumbnail button click
  get '/show_movie/:id', to: 'show_movie#show_movie', as: 'show_movie'

  # Homepage route
  root 'moviefy#index'
end
