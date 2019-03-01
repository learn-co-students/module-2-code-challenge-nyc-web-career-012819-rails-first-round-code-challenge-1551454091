class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @pizzas = Pizza.all
  end







  private

  def rest_params
    params.require(:restaurant).permit(:name, :address)
  end


end
