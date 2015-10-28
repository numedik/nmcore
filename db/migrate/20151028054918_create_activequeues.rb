class CreateActivequeues < ActiveRecord::Migration
  def change
    create_table :activequeues, id: false do |t|
      t.primary_key :treatment_id
      t.integer :patient_id, null: false
      t.string :patientname, null: false
      t.string :workorderprev
      t.string :workordercurrent
      t.string :statprev
      t.string :statcurrent
      t.string :user
      t.string :sn, null: false
      t.string :mrn, null: false
      t.string :gender

      t.timestamps null: false
    end
  end
end
