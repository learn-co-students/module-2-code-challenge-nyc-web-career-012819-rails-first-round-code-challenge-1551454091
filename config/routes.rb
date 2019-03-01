Rails.application.routes.draw do
  resources :pizzas
  resources :restaurants
  # resource :restaurant
  # get 'restaurant/:id', to: 'restaurants#show'
  # get '/restaurants', to: 'restaurants#index'
  # get '/pizzas', to: 'pizzas#index'
end
