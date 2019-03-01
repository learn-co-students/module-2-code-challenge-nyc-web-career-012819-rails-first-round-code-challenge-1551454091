class Restaurant < ApplicationRecord
  has_many :pizzas
  def self.search(search)
    where("name LIKE ?", "%#{search}%")
  end
end
