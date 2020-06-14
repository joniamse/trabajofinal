class AddLineItemIdToAccount < ActiveRecord::Migration[6.0]
  def change
    add_reference :accounts, :line_item, null: true, foreign_key: true
  end
end
