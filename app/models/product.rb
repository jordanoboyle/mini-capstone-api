class Product < ApplicationRecord
  def is_discounted?
    if product.price <= 10
      return true
    else
      return false
    end
  end
end
