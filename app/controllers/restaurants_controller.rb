class RestaurantsController < ApplicationController

  def index
    # byebug
    if params[:search] != nil
      # byebug
      @restaurants = Restaurant.where(name: params[:search])
    elsif params["search"] == ""
      @restaurants = Restaurant.all
      # redirect_to "/restaurants"
    else
      @restaurants = Restaurant.all
      # redirect_to "/restaurants"
    end
  end

  def show
    find_restaurant
    @pizzas = find_restaurant.pizzas
  end

  private

  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

end
