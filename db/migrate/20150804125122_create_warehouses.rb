class CreateWarehouses < ActiveRecord::Migration
  def change
    create_table :warehouses do |t|
      t.references :store, index: true, foreign_key: true
      t.references :purchaseorder, index: true, foreign_key: true
      t.decimal :initialquantity, :precision => 7, :scale => 2
      t.decimal :stockquantity, :precision => 7, :scale => 2
      t.references :user, index: true, foreign_key: true
      t.boolean :warehousestat, :default => true
      t.decimal :orderunit, :precision => 4, :scale => 2
      t.decimal :orderprice, :precision => 7, :scale => 2
      t.string :batchnum
      t.date :expireddate
      t.string :accountnum
      t.boolean :disabled, :default => false

      t.timestamps null: false
    end
  end
end
