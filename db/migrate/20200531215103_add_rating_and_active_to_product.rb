class AddRatingAndActiveToProduct < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :rating, :integer
    add_column :products, :active, :boolean
  end
end
