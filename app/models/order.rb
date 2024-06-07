class Order < ApplicationRecord

  #HAS MANY

  #BELONGS TO
  belongs_to :user
  belongs_to :product

end
