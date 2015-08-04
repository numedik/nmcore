class CreateTreatments < ActiveRecord::Migration
  def change
    create_table :treatments do |t|
      t.string :sn
      t.integer :patient_id
      t.integer :patienttype_id
      t.integer :treatmentstat_id
      t.integer :registrar_id
      t.integer :plan_id
      t.integer :discipline_id
      t.integer :doctor_id
      t.boolean :legalcase, :default => false

      t.timestamps null: false
    end
  end
end
