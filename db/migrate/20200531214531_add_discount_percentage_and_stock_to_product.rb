class AddDiscountPercentageAndStockToProduct < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :discountpercentage, :float, :default => 0
    add_column :products, :stock, :integer, :default => 0
  end
end
