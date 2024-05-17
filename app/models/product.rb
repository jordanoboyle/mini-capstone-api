class Product < ApplicationRecord
  def is_discounted?
    p id
    if price <= 10
      return true
    else
      return false
    end
  end
end
