class CreateInventories < ActiveRecord::Migration
  def change
    create_table :inventories do |t|
      t.string :code
      t.string :name
      t.string :scientificname
      t.references :inventorytype, index: true, foreign_key: true
      t.references :drugtype, index: true, foreign_key: true
      t.integer :minstock
      t.integer :maxstock
      t.integer :orderstock
      t.decimal :strength, :precision => 5, :scale => 2
      t.references :drugstrength, index: true, foreign_key: true
      t.integer :dosage
      t.references :drugdosage, index: true, foreign_key: true
      t.references :drugroute, index: true, foreign_key: true
      t.references :drugfrequency, index: true, foreign_key: true
      t.decimal :duration, :precision => 5, :scale => 2
      t.references :drugduration, index: true, foreign_key: true
      t.references :drugprocedure, index: true, foreign_key: true
      t.boolean :prn, :default => false
      t.boolean :disabled, :default => false

      t.timestamps null: false
    end
  end
end
