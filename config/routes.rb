Rails.application.routes.draw do
  post "/restaurants/search", to: "restaurants#search", as: "restaurant_search"
  resources :restaurants, only: [:index, :show]
  resources :pizzas, only: [:index, :show, :new, :create]
end
