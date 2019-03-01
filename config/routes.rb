Rails.application.routes.draw do
resources :restaurants
resources :pizzas

  # get '/restaurants', to: 'restaurants#index'
  # get '/restaurants/:id', to: 'restaurants#show'
  # get '/pizzas', to: 'pizzas#index'
  # get '/pizzas', to: 'pizzas#show'
end
