class AddAccountIdToCart < ActiveRecord::Migration[6.0]
  def change
    add_reference :carts, :account, null: true, foreign_key: true
  end
end
