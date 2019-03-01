class RestaurantsController < ApplicationController
  def index
    if params[:search]
    @restaurant = Restaurant.where('restaurant LIKE ?', "%#{params[:search]}%")
  else
    @restaurants = Restaurant.all
  end
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end
end
