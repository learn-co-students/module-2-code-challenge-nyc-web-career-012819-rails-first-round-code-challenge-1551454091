Rails.application.routes.draw do
  get '/restaurants', to: 'restaurants#index'
  get '/restaurants/:id', to: 'restaurants#show', as: 'restaurant'
  get '/pizzas', to: 'pizzas#index'
  # resources :restaurants
  # resources :pizzas
  get '/pizzas/new', to: 'pizzas#new', as: 'new_pizza'
  post '/pizzas', to: 'pizzas#create'
  get '/pizzas/:id', to: 'pizzas#show', as: 'pizza'
  # get '/pizzas/:id/edit', to: 'pizzas#edit', as: 'edit_pizza'
  # patch '/pizzas/:id', to: 'pizzas#update'
  # get '/restaurants/:id', to: 'restaurants#show', as: 'search'
end
