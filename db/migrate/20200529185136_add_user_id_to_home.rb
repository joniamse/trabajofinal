class AddUserIdToHome < ActiveRecord::Migration[6.0]
  def change
    add_reference :homes, :user, null: false, foreign_key: true
  end
end
