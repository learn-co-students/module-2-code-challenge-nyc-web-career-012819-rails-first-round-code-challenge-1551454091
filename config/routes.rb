Rails.application.routes.draw do
  # get '/restaurants', to: 'restaurants#index'
  # get '/pizzas', to: 'pizzas#index'
  get '/restaurant_not_found', to: 'restaurants#notfound', as: 'restaurant_not_found'

  # only have a show page and index page for restaurants
  resources :restaurants, only: [:index, :show]

  # only have index, show, new and create for pizzas
  resources :pizzas, only: [:index, :show, :new, :create]
end
