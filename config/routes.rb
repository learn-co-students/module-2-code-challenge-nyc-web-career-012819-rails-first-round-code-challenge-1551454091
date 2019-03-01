Rails.application.routes.draw do
  get '/restaurants', to: 'restaurants#index', as: 'restaurants'
  get '/restaurants/:id', to: 'restaurants#show', as: 'restaurant'


  get '/pizzas', to: 'pizzas#index', as: 'pizzas'
  resources :pizzas, only: [:show, :new, :create]


end
