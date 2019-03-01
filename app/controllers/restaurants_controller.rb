class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all

    render :index
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @pizzas = @restaurant.pizzas

    render :show
  end


  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address)
  end
end
