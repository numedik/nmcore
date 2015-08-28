class CreateTreatmenticds < ActiveRecord::Migration
  def change
    create_table :treatmenticds do |t|
      t.references :treatment, index: true, foreign_key: true
      t.string :cause_code
      t.string :procedure_code
      t.string :desease_code
      t.string :causeofdeath_code
      t.string :remark
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
