class RestaurantsController < ApplicationController
  def index
    if params[:search]
      @restaurants = Restaurant.search(params[:search])
      redirect_to controller: 'restaurants', action: @restaurants
    else
      @restaurants = Restaurant.all
    end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @pizzas = Pizza.where(restaurant_id: @restaurant.id)
  end

  private
  def restaurant_params
    params.require(:restaurant).permit(:name, :address)
  end
end
