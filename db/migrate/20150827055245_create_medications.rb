class CreateMedications < ActiveRecord::Migration
  def change
    create_table :medications do |t|
      t.references :treatment, index: true, foreign_key: true
      t.references :patienttype, index: true, foreign_key: true
      t.references :inventory, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.decimal :strength, :precision => 5, :scale => 2
      t.references :drugstrength, index: true, foreign_key: true
      t.integer :dosage
      t.references :drugdosage, index: true, foreign_key: true
      t.references :drugroute, index: true, foreign_key: true
      t.references :drugfrequency, index: true, foreign_key: true
      t.decimal :duration, :precision => 5, :scale => 2
      t.references :drugduration, index: true, foreign_key: true
      t.integer :quantity
      t.references :drugprocedure, index: true, foreign_key: true
      t.boolean :prn, :default => false
      t.string :instruction
      t.string :remark
      t.references :medicationstat, index: true, foreign_key: true
      t.references :billitem, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
