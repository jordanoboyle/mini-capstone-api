class ChangeNameProdIdImages < ActiveRecord::Migration[7.1]
  def change
    rename_column :images, :products_id, :product_id
  end
end
