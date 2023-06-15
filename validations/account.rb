class Account < ApplicationRecord
  has_many :addresses
  validates :username, :password, :email, presence: true
  validates :username, uniqueness: true
end
