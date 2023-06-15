class Address < ApplicationRecord
  belongs_to :account
  validates :street_number, numericality: { only_integer: true, message: "Please, input numbers only" }
end
