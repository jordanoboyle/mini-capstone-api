class CategoryProduct < ApplicationRecord
  

  #HAS MANY
  belongs_to :category
  belongs_to :product


end
