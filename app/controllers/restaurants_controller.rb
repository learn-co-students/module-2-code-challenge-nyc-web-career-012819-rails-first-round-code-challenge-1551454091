class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @pizza = Pizza.find(pizza.restaurant_id)
  end
  
end
