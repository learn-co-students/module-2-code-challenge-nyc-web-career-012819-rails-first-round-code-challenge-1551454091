class PizzasController < ApplicationController
  def index
    @pizzas = Pizza.all
    render :index
  end

  def show
    find_pizza
    @restaurant = Restaurant.find(params[:id])
    render :show
  end

  def new
    @pizza = Pizza.new
    render :new
  end

  def create
    @restaurants = Restaurant.all
    @pizza = Pizza.new(pizza_params)
    if @pizza.save
      redirect_to pizza_path(@pizza)
    else
      render :new
    end
  end

  def edit
    find_pizza
  end

  def update
    find_pizza
    if @pizza.update(pizza_params)
      redirect_to pizza_path(@pizza)
    else
      render :edit
    end
  end

  def find_pizza
    @pizza = Pizza.find(params[:id])
  end

  private

  def pizza_params
    params.require(:pizza).permit(:name, :ingredients, :restaurant_id)
  end
end
