class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.search(params[:search])

    render :index
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @pizzas = @restaurant.pizzas

    render :show
  end



private

def restaurant_params
  params.require(:restaurant).permit(:name, :address, :search)
end



end
