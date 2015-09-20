class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :mrn
      t.string :mykadno
      t.string :oldic
      t.string :passport
      t.string :birthcert
      t.string :fullname
      t.references :gender, index: true, foreign_key: true #t.integer :gender_id
      t.string :add1
      t.string :add2
      t.string :add3
      t.string :city
      t.string :postcode
      t.references :state, index: true, foreign_key: true #t.integer :state_id
      t.references :nationality, index: true, foreign_key: true #t.integer :nationality_id
      t.string :homephone
      t.string :mobilephone
      t.string :email
      t.date :dob
      t.integer :defaultplan_id
      t.integer :defaultaccount_id
      t.string :profession
      t.string :employer
      t.string :employerphone
      t.references :religion, index: true, foreign_key: true #t.integer :religion_id
      t.references :marital, index: true, foreign_key: true #t.integer :marital_id
      t.references :race, index: true, foreign_key: true #t.integer :race_id
      t.references :bloodtype, index: true, foreign_key: true #t.integer :bloodtype_id
      t.references :patientstat, index: true, foreign_key: true #t.integer :patientstat_id
      t.text :remarkgeneral
      t.text :remarkallergy
      t.text :remarkmedicalhistory
      t.text :remarkfamilyhistory
      t.references :rnstat, index: true, foreign_key: true #t.integer :rnstat_id
      t.references :designation, index: true, foreign_key: true #t.integer :designation_id
      t.string :relativename
      t.string :relativerelation
      t.string :relativeadd
      t.string :relativetel
      t.integer :registrar_id

      t.timestamps null: false
    end


  end
end
