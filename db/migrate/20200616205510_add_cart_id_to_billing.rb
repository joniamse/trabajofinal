class AddCartIdToBilling < ActiveRecord::Migration[6.0]
  def change
    add_reference :billings, :cart, null: true, foreign_key: true
  end
end
