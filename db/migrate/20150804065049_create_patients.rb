class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :mrn
      t.string :mykadno
      t.string :oldic
      t.string :passport
      t.string :birthcert
      t.string :fullname
      t.integer :gender_id
      t.string :add1
      t.string :add2
      t.string :add3
      t.string :city
      t.string :postcode
      t.integer :state_id
      t.integer :nationality_id
      t.string :homephone
      t.string :mobilephone
      t.string :email
      t.date :dob
      t.integer :defaultplan_id
      t.integer :defaultaccount_id
      t.string :profession
      t.string :employer
      t.string :employerphone
      t.integer :religion_id
      t.integer :marital_id
      t.integer :race_id
      t.integer :bloodtype_id
      t.integer :patientstat_id
      t.text :remarkgeneral
      t.text :remarkallergy
      t.text :remarkmedicalhistory
      t.text :remarkfamilyhistory
      t.integer :rnstat_id
      t.integer :designation_id
      t.string :relativename
      t.string :relationrelation
      t.string :relativeadd
      t.string :relativetel
      t.integer :registrar_id

      t.timestamps null: false
    end
  end
end
