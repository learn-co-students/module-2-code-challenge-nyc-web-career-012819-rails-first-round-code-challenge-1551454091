Rails.application.routes.draw do
  # resources :pizzas, only: [...]

  get '/restaurants', to: 'restaurants#index'
  get '/restaurants/:id', to: 'restaurants#show', as: 'restaurant'

  get '/pizzas', to: 'pizzas#index'
  get '/pizzas/new', to: 'pizzas#new'
  get '/pizzas/:id', to: 'pizzas#show', as: 'pizza'
  post '/pizzas', to: 'pizzas#create'
end
