Rails.application.routes.draw do
  resources :crews
  resources :movies
  root 'moviefy#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
