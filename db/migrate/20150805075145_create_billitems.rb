class CreateBillitems < ActiveRecord::Migration
  def change
    create_table :billitems do |t|
      t.references :billing, index: true, foreign_key: true
      t.references :patienttype, index: true, foreign_key: true
      t.references :price, index: true, foreign_key: true
      t.decimal :adjustedprice, :precision => 7, :scale => 2
      t.integer :quantity, :default => 1
      t.references :user, index: true, foreign_key: true
      t.references :billitemstat, index: true, foreign_key: true
      t.references :plan, index: true, foreign_key: true
      #t.references :paymenttype, index: true, foreign_key: true
      t.references :chargegroup, index: true, foreign_key: true
      t.references :account, index: true, foreign_key: true
      t.references :gstcode, index: true, foreign_key: true
      t.boolean :inpackage, :default => false
      t.string :editedname
      t.string :debitsn
      t.boolean :reversed, :default => false
      t.references :warehouse, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
