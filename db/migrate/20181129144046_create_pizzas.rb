class CreatePizzas < ActiveRecord::Migration[5.1]
  def change
    create_table :pizzas do |t|
      t.string :name
      t.string :ingredients
      t.references :restaurant, foreign_key: true

      t.timestamps
    end
  end
end
