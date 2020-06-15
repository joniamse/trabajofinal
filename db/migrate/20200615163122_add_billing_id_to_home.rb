class AddBillingIdToHome < ActiveRecord::Migration[6.0]
  def change
    add_reference :homes, :billing, null: true, foreign_key: true
  end
end
