class CreateWarehouseInventories < ActiveRecord::Migration
  def change
    create_table :warehouse_inventories do |t|
      t.references :warehouse, index: true, foreign_key: true
      t.references :inventory, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
