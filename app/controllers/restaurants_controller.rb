class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
    render :index
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    render :show
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @resteraunt = Restaurant.create(restaurant_params)

    redirect_to restaurant_path(@resteraunt)
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def update
    @restaurant = Restaurant.find(params[:id])
    @restaurant.update(restaurant_params)
    redirect_to restaurant_path(@restaurant)
  end

  def destroy
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address)
  end


end
