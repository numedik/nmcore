class CreateDrugdurations < ActiveRecord::Migration
  def change
    create_table :drugdurations do |t|
      t.string :code
      t.string :name
      t.integer :multiplier
      t.boolean :disabled, :default => false

      t.timestamps null: false
    end
  end
end
