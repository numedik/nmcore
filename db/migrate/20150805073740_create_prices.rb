class CreatePrices < ActiveRecord::Migration
  def change
    create_table :prices do |t|
      t.string :code
      t.string :name
      t.references :plan, index: true, foreign_key: true
      t.decimal :actualcost, :precision => 7, :scale => 2
      t.decimal :recommendedprice, :precision => 7, :scale => 2
      t.references :pricetype, index: true, foreign_key: true
      t.references :gstcode, index: true, foreign_key: true
      t.references :chargegroup, index: true, foreign_key: true
      t.boolean :reducestock, :default => false

      t.timestamps null: false
    end
  end
end
