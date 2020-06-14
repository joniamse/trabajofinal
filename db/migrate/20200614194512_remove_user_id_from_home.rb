class RemoveUserIdFromHome < ActiveRecord::Migration[6.0]
  def change
    remove_reference :homes, :user, null: false, foreign_key: true
  end
end
