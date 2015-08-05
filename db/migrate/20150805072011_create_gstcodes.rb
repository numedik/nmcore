class CreateGstcodes < ActiveRecord::Migration
  def change
    create_table :gstcodes do |t|
      t.string :code
      t.string :name
      t.string :gsttype
      t.integer :rate
      t.boolean :disabled, :default => false

      t.timestamps null: false
    end
  end
end
