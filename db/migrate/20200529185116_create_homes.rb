class CreateHomes < ActiveRecord::Migration[6.0]
  def change
    create_table :homes do |t|
      t.string :address
      t.integer :postalcode
      t.string :country
      t.string :province
      t.string :location
      t.string :reference

      t.timestamps
    end
  end
end
