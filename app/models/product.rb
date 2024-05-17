class Product < ApplicationRecord
  def is_discounted?
    p id
    if price <= 10
      return true
    else
      return false
    end
  end

  def tax 
    tax_rate = (9.to_f / 100)
    tax = price * tax_rate
    return tax 
  end

  def total  # this is kind of like defining a new attribute and can be accessed as such.
    total = price + tax
    return total
  end
end
