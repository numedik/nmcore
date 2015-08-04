class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.integer :workorder_id
      t.string :fullname
      t.string :phone
      t.integer :role_id
      t.integer :discipline_id
      t.integer :department_id
      t.integer :userstat_id
      
      t.timestamps null: false
    end
    
    
  end
end
