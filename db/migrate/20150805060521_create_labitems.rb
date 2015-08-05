class CreateLabitems < ActiveRecord::Migration
  def change
    create_table :labitems do |t|
      t.string :code
      t.string :name
      t.string :unit
      t.string :normalvalue
      t.boolean :disabled, :default => false

      t.timestamps null: false
    end
  end
end
