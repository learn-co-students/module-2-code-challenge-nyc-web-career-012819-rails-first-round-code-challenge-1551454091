class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
    @restaurant = Restaurant.where({name: params[:search]})
    if params[:search] && @restaurant[0] != nil
      redirect_to restaurant_path(@restaurant[0].id)
   else
     render 'index'
   end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @pizzas = @restaurant.pizzas

    render 'show'
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :search)
  end
end
