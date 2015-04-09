class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :name
      t.decimal :price, precision: 15, scale: 2
      t.integer :weight

      t.timestamps null: false
    end
  end
end
