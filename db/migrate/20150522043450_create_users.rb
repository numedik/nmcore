class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.references :workorder, index: true, foreign_key: true
      #t.integer :workorder_id
      t.string :fullname
      t.string :phone
      t.references :role, index: true, foreign_key: true #t.integer :role_id
      t.references :discipline, index: true, foreign_key: true #t.integer :discipline_id
      t.references :department, index: true, foreign_key: true #t.integer :department_id
      t.references :userstat, index: true, foreign_key: true #t.integer :userstat_id
      
      t.timestamps null: false
    end
    
    
  end
end
