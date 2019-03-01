class PizzasController < ApplicationController
  def index
    @pizzas = Pizza.all
  end

  def show
    @pizza = Pizza.find(params[:id])
  end

  def new
    @pizza = Pizza.new
    @restaurants = Restaurant.all
  end

  def create
    @pizza = Pizza.create(pizza_params)
    if @pizza.valid?
      redirect_to pizzas_path
    else
      flash[:error] = @pizza.errors.full_messages
      redirect_to new_pizza_path
    end
  end


  private

  def pizza_params
    params.require(:pizza).permit(:name, :ingredients, :restuarant_id)
  end
end
