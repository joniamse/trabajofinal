class AddAccountIdToLineItem < ActiveRecord::Migration[6.0]
  def change
    add_reference :line_items, :account, null: true, foreign_key: true
  end
end
