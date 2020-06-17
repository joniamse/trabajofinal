class AddBillingIdToCart < ActiveRecord::Migration[6.0]
  def change
    add_reference :carts, :billing, null: true, foreign_key: true
  end
end
