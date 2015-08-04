class CreatePurchaseorders < ActiveRecord::Migration
  def change
    create_table :purchaseorders do |t|
      t.string :ponumber
      t.references :vendor, index: true, foreign_key: true
      t.date :podate
      t.references :user, index: true, foreign_key: true
      t.string :accountnum
      t.references :postat, index: true, foreign_key: true
      t.string :department
      t.date :expecteddate

      t.timestamps null: false
    end
  end
end
