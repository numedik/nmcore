class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.references :patient, index: true, foreign_key: true
      t.date :bookdate
      t.time :start
      t.time :end
      t.references :appointmentstat, index: true, foreign_key: true
      t.string :remark

      t.timestamps null: false
    end
  end
end
