class Supplier < ApplicationRecord

  #has_many :products
  # ABOVE IS THE SIMPLE SHORTCUT AND SYNTAX OF BELOW
  def products
    Product.where(supplier_id: id)
  end



end
