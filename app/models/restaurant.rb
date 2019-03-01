class Restaurant < ApplicationRecord
  has_many :pizzas

  def self.search(search)
    # byebug
    if search
      rest = Restaurant.find_by(name: search)
      if rest
        self.where(id: rest.id)
      else
        Restaurant.all
      end
    else
      Restaurant.all
    end
  end
end
