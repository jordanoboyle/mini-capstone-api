class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true 

  # Has many
  has_many :orders
  
end
