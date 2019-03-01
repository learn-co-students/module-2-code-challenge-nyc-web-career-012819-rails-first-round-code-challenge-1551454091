class PizzasController < ApplicationController
before_action :find_pizza, only: [:show]

  def index
    @pizzas = Pizza.all

    render :index
  end

  def show
    #activated before_action
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
        redirect_to pizza_path(pizza)
      else
        flash[:errors] = pizza.errors.full_messages
        redirect_to new_pizza_path
    end
  end


  private

  def pizza_params
    params.require(:pizza).permit(:name, :ingredients, :restaurant_id)
  end

  def find_pizza
    @pizza = Pizza.find(params[:id])
  end

end
