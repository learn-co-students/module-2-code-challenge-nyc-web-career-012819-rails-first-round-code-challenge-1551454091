Rails.application.routes.draw do
  get '/restaurants', to: 'restaurants#index'
  get '/restaurants/:id', to: 'restaurants#show', as: "restaurant"
  get '/pizzas', to: 'pizzas#index'
  get '/pizzas/new', to: 'pizzas#new', as: "new_pizza"
  post '/pizzas', to: 'pizzas#create'
  get '/pizzas/:id', to: 'pizzas#show', as: "pizza"
end
