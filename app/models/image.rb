class Image < ApplicationRecord
  validates :product_id, presence: true
  validates :product_id, numericality: { only_integer: true}
  validates :url, presence: true
  
end