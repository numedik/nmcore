class CreateMykadrecords < ActiveRecord::Migration
  def change
    create_table :mykadrecords do |t|
      t.string :name
      t.string :mykadnum
      t.string :gender
      t.string :oldic
      t.string :dob
      t.string :birthplace
      t.string :citizenship
      t.string :race
      t.string :religion
      t.string :add1
      t.string :add2
      t.string :add3
      t.string :postcode
      t.string :city
      t.string :state
      t.string :picture

      t.timestamps null: false
    end
  end
end
