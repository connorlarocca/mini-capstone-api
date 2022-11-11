class ChangeQiSToQuantity < ActiveRecord::Migration[7.0]
  def change
    rename_column :products, :quantity_in_stock, :quantity
  end
end
