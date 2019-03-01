Rails.application.routes.draw do
  # get '/restaurants', to: 'restaurants#index'
  # get '/pizzas', to: 'pizzas#index'
  # get '/pizzas/new', to: 'pizzas#new'
  # get '/restaurants/new', to: 'restaurants#new'
  # get '/pizzas/:id', to:'pizzas#show', as: 'pizza'
  # get '/restaurants/:id', to:'restaurants#show', as: 'restaurant'
  # get '/pizzas/:id/edit', to: 'pizzas#edit'
  # get '/restaurants/:id/edit', to: 'restaurants#edit'
  # post '/pizzas', to: 'pizzas#create'
  # post '/restaurants', to: 'restaurants#create'
  # patch '/pizzas/:id', to: 'pizzas#update'
  # patch '/restaurants/:id', to: 'restaurants#update'

  #no destroy

  resources :pizzas, except: :destroy
  resources :restaurants, except: [:destroy, :new, :create, :update, :edit]
end
