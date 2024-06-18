class Category < ApplicationRecord

  #HAS MANY
  has_many :category_products
  has_many :products, through: :category_products

  # def products
  #   final = []
  #   category_products.each do |cp|
  #     final << cp.product
  #   end
  # end
end
