class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all.search(params[:search])
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @pizzas = Pizza.all
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :search)
  end

end
