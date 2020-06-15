class CreateBillings < ActiveRecord::Migration[6.0]
  def change
    create_table :billings do |t|
      t.date :date

      t.timestamps
    end
  end
end
