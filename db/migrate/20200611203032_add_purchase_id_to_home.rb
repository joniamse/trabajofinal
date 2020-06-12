class AddPurchaseIdToHome < ActiveRecord::Migration[6.0]
  def change
    add_reference :homes, :purchase, null: false, foreign_key: true
  end
end
