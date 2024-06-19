class Order < ApplicationRecord

  #HAS MANY
  has_many :carted_products
  has_many :users, through: :carted_products
  #BELONGS TO
  belongs_to :user
  

end
