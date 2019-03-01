class PizzasController < ApplicationController
  def index
    @pizzas = Pizza.all
  end

  def show
    @pizza = Pizza.find(params[:id])
  end

  def new
    @pizza = Pizza.new
  end

  def edit
    @pizza = Pizza.find(params[:id])
  end

  def create
    pizza = Pizza.create(pizza_params)
    if pizza.valid?
      redirect_to pizza_path(pizza)
    else
      flash[:errors] = pizza.errors.full_messages
      redirect_to new_pizza_path
    end
  end

  def update
    pizza = Pizza.find(params[:id])
    pizza.update(pizza_params)
    redirect_to pizza_path(pizza)
  end

  private

  def pizza_params
    params.require(:pizza).permit(:name, :ingredients, :restaurant_id)
  end

end
