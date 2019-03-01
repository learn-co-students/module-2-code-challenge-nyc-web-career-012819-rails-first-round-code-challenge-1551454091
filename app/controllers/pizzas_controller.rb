class PizzasController < ApplicationController
  def index
    @pizzas = Pizza.all
  end

  def show
    find_pizza
    @ingredients = find_pizza.ingredients
  end

  def new
    @pizza = Pizza.new
    @restaurants = Restaurant.all
  end

  def create
    @pizza = Pizza.new(pizza_params)
    if @pizza.valid?
      @pizza.save
      redirect_to pizzas_path
    else
      flash[:errors] = @pizza.errors.full_messages
      redirect_to new_pizza_path
    end
  end

  private

  def find_pizza
    @pizza = Pizza.find(params[:id])
  end

  def pizza_params
    params.require(:pizza).permit(:name, :ingredients, :restaurant_id, :search)
  end

end
