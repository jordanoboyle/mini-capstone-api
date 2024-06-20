class CartedProduct < ApplicationRecord

#HAS Many

#Belongs To
  belongs_to :user
  belongs_to :product
  belongs_to :order, optional: true



end
