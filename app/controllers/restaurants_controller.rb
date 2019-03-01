class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @pizzas = @restaurant.pizzas
  end

  def search
    restaurant = Restaurant.where(name: params[:q])
    if !restaurant.empty?
      redirect_to restaurant_path(restaurant.first)
    else
      flash[:error] = "No such restaurant exists!"
      redirect_to restaurants_path
    end
  end
end
