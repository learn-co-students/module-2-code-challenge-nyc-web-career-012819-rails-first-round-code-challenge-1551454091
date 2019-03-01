class RestaurantsController < ApplicationController

  # if there is a search and it's not found,
  # redirect to not found --
  # view pg says not there and button to go back
  # if there is a search and it IS found,
  # redirect to that show page
  # if there is no search, STANDY index page
  def index
    if params[:search] && (Restaurant.find_by(name: params[:search])== nil)
      redirect_to restaurant_not_found_path
    elsif params[:search]
      redirect_to restaurant_path(Restaurant.find_by(name: params[:search]))
    else
      @restaurants = Restaurant.all
    end
  end

  # create a show page for each restaurant
  def show
    @restaurant = Restaurant.find(params[:id])
    @pizzas = @restaurant.pizzas
    render 'show'
  end

  def notfound
    render 'restaurant_not_found'
  end

  # only call this method from inside
  # create search in order to save someone's response
  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :search)
  end


end
