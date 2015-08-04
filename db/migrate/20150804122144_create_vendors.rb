class CreateVendors < ActiveRecord::Migration
  def change
    create_table :vendors do |t|
      t.string :code
      t.string :roc
      t.string :name
      t.string :contactname
      t.string :contactphone
      t.string :contactemail
      t.date :registereddate
      t.string :remark
      t.string :add1
      t.string :add2
      t.string :add3
      t.string :city
      t.string :postcode
      t.references :state, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.boolean :disabled, :default => false

      t.timestamps null: false
    end
  end
end
