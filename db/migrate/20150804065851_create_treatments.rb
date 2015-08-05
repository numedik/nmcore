class CreateTreatments < ActiveRecord::Migration
  def change
    create_table :treatments do |t|
      t.string :sn
      t.references :patient, index: true, foreign_key: true #t.integer :patient_id
      t.references :patienttype, index: true, foreign_key: true #t.integer :patienttype_id
      t.references :treatmentstat, index: true, foreign_key: true #t.integer :treatmentstat_id
      t.integer :registrar_id
      t.references :plan, index: true, foreign_key: true #t.integer :plan_id
      t.references :discipline, index: true, foreign_key: true #t.integer :discipline_id
      t.integer :doctor_id
      t.boolean :legalcase, :default => false

      t.timestamps null: false
    end
    
    #add_index :patients, :registrar_id
    #add_index :patients, :doctor_id
  end
end
