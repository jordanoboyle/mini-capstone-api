class Supplier < ApplicationRecord
  validates :name, presence: true, length: { minimum: 3 }
  validates :email, presence: true, length: { minimum: 7 }
  validates :phone_number, presence: true, length: { minimum: 10, maximum: 10} 

  

  has_many :products
  # ABOVE IS THE SIMPLE SHORTCUT AND SYNTAX OF BELOW
  # def products
  #   Product.where(supplier_id: id)
  # end
  def country_code_number
    pretty = "(+1) #{phone_number}"
    return pretty
  end



end
