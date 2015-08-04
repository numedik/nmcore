class CreatePoitems < ActiveRecord::Migration
  def change
    create_table :poitems do |t|
      t.references :purchaseorder, index: true, foreign_key: true
      t.references :inventory, index: true, foreign_key: true
      t.string :description
      t.decimal :quantity, :precision => 7, :scale => 2
      t.decimal :price, :precision => 7, :scale => 2
      t.string :accountnum
      t.references :user, index: true, foreign_key: true
      t.decimal :orderunit, :precision => 4, :scale => 2
      t.boolean :disabled, :default => false

      t.timestamps null: false
    end
  end
end
