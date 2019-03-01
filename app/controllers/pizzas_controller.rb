class PizzasController < ApplicationController

  def index
    @pizzas = Pizza.all
  end

  def show
    find_pizza
    render :show
  end

  def new
    @pizza = Pizza.new
    @restaurants = Restaurant.all
    render :new
  end

  def create
    pizza = Pizza.create(pizza_params)
    if pizza.valid?
      redirect_to pizza_path pizza
      # redirect_to pizza works too
    else
      flash[:errors] = pizza.errors.full_messages
      redirect_to pizzas_new_path
    end
  end

  private

  def find_pizza
    @pizza = Pizza.find(params[:id])
  end

  def pizza_params
    params.require(:pizza).permit(:name, :ingredients, :restaurant_id)
  end

end
