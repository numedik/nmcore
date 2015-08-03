class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :code
      t.string :name
      t.string :add1
      t.string :add2
      t.string :add3
      t.string :postcode
      t.string :city
      t.integer :state_id
      t.integer :accounttype_id
      t.decimal :eligibility, :precision => 8, :scale => 2
      t.boolean :disabled, :default => false

      t.timestamps null: false
    end
  end
end
