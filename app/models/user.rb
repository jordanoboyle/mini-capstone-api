class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true 

  # Has many
  has_many :carted_products
  has_many :orders
  has_many :orders, through: :carted_products
  
end
