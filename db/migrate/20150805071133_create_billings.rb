class CreateBillings < ActiveRecord::Migration
  def change
    create_table :billings do |t|
      t.string :refnum
      t.references :patient, index: true, foreign_key: true
      t.references :treatment, index: true, foreign_key: true
      t.references :billingstat, index: true, foreign_key: true
      t.string :remark
      t.datetime :closetime
      t.string :closeremark
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
