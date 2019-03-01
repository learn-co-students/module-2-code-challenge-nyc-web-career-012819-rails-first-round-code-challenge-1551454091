class PizzasController < ApplicationController
  def index
    @pizzas = Pizza.all
  end

  # create a show page for each za
  def show
    @pizza = Pizza.find(params[:id])
    render 'show'
  end

  # bring me to a form for a new pizza
  def new
    @pizza = Pizza.new
    # dont want to touch db in show page
    # want to be able to select from an existing rest.
    # by name using collection select
    @restaurants = Restaurant.all
  end

  # actually make/save the pizza
  # if unique, send back to main pizzas page
  # otherwise, send to new form again &&&& SHOW ERRORS
  def create
    pizza = Pizza.create(pizza_params)
    if pizza.valid?
      redirect_to pizzas_path
    else
      flash[:errors] = pizza.errors.full_messages
      redirect_to new_pizza_path
    end 
  end

  # only call this method from inside
  private

  def pizza_params
    params.require(:pizza).permit(:name, :ingredients, :restaurant_id)
  end


end
