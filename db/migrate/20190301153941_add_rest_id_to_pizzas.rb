class AddRestIdToPizzas < ActiveRecord::Migration[5.1]
  def change
    add_reference :pizzas, :restaurant, foreign_key: true
  end
end
