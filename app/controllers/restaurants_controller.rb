class RestaurantsController < ApplicationController

  def index
    # @restaurants = Restaurant.all
    @restaurants = Restaurant.search(params[:search])
  end

  def show
    find_restaurant
    # byebug
    @pizzas = @restaurant.pizzas
    render :show
  end

  private

  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  # def restaurant_params
  #   params.require(:restaurant).permit(:name, :address, :search)
  # end

end
