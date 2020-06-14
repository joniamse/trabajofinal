class RemoveAccountIdFromLineItem < ActiveRecord::Migration[6.0]
  def change
    remove_reference :line_items, :account, null: false, foreign_key: true
  end
end
