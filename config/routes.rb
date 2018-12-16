Rails.application.routes.draw do
  get 'admin_dashboard/index', as: 'admin_dashboard'
  get 'sessions/new'
  get 'session/new'
  resources :users
  resources :billing_addresses
  resources :credit_cards
  resources :purchasings
  resources :theaters
  # Databases
  resources :crews
  resources :movies

  # Get routes
  get '/theater_map/map', to: 'theater_map#map', as: 'theater_map'
  get '/show_movie/show_movie'
  get '/purchasings/index'
  post '/purchasings/new'

  # Users routes
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  # Search routes
  get '/search/movie', to: 'search#movie', as: 'search_movie'
  get '/search/crew', to: 'search#crew', as: 'search_crew'
  get '/search/theater', to: 'search#theater', as: 'search_theater'
  get '/search/top_to_movies', to: 'search#top_10_movies', as: 'top_10_movies'

  # Route for movie info after thumbnail button click
  get '/show_movie/:id', to: 'show_movie#show_movie', as: 'show_movie'

  # Homepage route
  root 'moviefy#index'
end
