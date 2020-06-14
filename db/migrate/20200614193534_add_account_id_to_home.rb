class AddAccountIdToHome < ActiveRecord::Migration[6.0]
  def change
    add_reference :homes, :account, null: false, foreign_key: true
  end
end
