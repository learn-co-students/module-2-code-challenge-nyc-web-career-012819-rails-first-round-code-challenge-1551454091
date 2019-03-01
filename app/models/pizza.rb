class Pizza < ApplicationRecord
  belongs_to :restaurant

  validates :name, :uniqueness => true

  # def method_name
  #   self.
  # end

end
