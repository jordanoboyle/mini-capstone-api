class CartedProduct < ApplicationRecord

#HAS Many

#Belongs To
  belongs_to :user
  belongs_to :order



end
