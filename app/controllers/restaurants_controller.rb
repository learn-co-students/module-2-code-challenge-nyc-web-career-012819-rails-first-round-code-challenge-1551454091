class RestaurantsController < ApplicationController
  def index

    if params[:restaurant]
    @restaurant = Restaurant.where('store LIKE ?', "%#{params[:restaurant]}%")
  else
    @restaurants = Restaurant.all
  end
    render 'index'
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @pizzas = @restaurant.pizzas
    render 'show'
  end

  private

  def coupon_params
    params.require(:restaurant).permit(:name)
  end
end
